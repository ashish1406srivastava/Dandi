package org.dandi.com.view;

import java.io.IOException;
//HTTP Libs
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//XML Libs
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

//W3C lib for xml
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

//custom calls
//Tool class have all the util methods example getTimestamp()
import org.dandi.com.util.tool;

/**
 * Servlet implementation class prePairXML
 */
@WebServlet("/prePairXML")
public class prePairXML extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public prePairXML() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		tool utilObj = new tool();
		DocumentBuilderFactory icFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder icBuilder;
		String country = request.getParameter("InputCountry");
		String fullName = request.getParameter("InputFullName");
		String shortName = request.getParameter("InputShortName");
		String serialNo = request.getParameter("InputSerialNo");
		String serialID = request.getParameter("InputSerialID");
		String count = request.getParameter("levelCount");

		try {
			icBuilder = icFactory.newDocumentBuilder();
			Document doc = icBuilder.newDocument();
			Element mainRootElement = doc.createElement("Statute");
			mainRootElement.setAttribute("id", utilObj.getTimestamp());
			doc.appendChild(mainRootElement);
			mainRootElement.appendChild(getNode(doc, "country", country));
			mainRootElement.appendChild(getNode(doc, "fullName", fullName));
			mainRootElement.appendChild(getNode(doc, "shortName", shortName));
			mainRootElement.appendChild(getNode(doc, "serialNo", serialNo));
			mainRootElement.appendChild(getNode(doc, "serialID", serialID));

			Element metadata = doc.createElement("metadata");
			mainRootElement.appendChild(metadata);
			int icount = Integer.parseInt(count);

			for (int i = 1; i <= icount; i++) {
				Element statuteSubDivision = doc
						.createElement("statuteSubDivision");
				String name = request.getParameter("metedata_" + i);
				
				String optional = request.getParameter("opt_" + i);
				if(optional!=null && !optional.isEmpty()){
				    optional = "true";
				}
				else
				{
					optional = "false";
				}
				String primarySequence = request.getParameter("pri_" + i);
				if(primarySequence!=null && !primarySequence.isEmpty()){
					primarySequence = "true";
				}
				else
				{
					primarySequence = "false";
				}
				statuteSubDivision.appendChild(getNode(doc, "level", ""+i));
				statuteSubDivision.appendChild(getNode(doc, "name", name));
				statuteSubDivision.appendChild(getNode(doc, "optional", optional));
				statuteSubDivision.appendChild(getNode(doc, "primarySequence", primarySequence));

				metadata.appendChild(statuteSubDivision);
			}

			Transformer transformer = TransformerFactory.newInstance()
					.newTransformer();
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			DOMSource source = new DOMSource(doc);
			StreamResult console = new StreamResult(response.getWriter());
			transformer.transform(source, console);
		} catch (Exception e) {

		}

	}

	// utility method to create text node
	private static Node getNode(Document doc, String name, String value) {
		Element node = doc.createElement(name);
		node.appendChild(doc.createTextNode(value));
		return node;
	}

}
