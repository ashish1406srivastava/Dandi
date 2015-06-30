package org.dandi.com.util;

import com.sun.jmx.snmp.Timestamp;

public class tool {
	
	public String getTimestamp()
	{
		long unixTime = System.currentTimeMillis() / 1000L;
		String strTimestamp = Long.toString(unixTime);
		return strTimestamp;
	}
	

}
