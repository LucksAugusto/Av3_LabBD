package utils;

public class StrUtils {
	
	public static String concat(String... strings){
		
		StringBuffer strB = new StringBuffer();
		
		for(String s: strings)
			strB.append(s);
		
		return strB.toString();
	}
}
