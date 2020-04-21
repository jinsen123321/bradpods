package com.bradypods.util;



public class UploadUtil {
	
	public static String getUploadPath(String fileName,String upload){
		
		//根据图片名称,生成路径结构upload/1**
		String hash = Integer.toHexString(fileName.hashCode());
		while(hash.length()<8){
			hash += "0";
		}
		for (int i = 0; i < hash.length(); i++) {
			upload += "/"+hash.charAt(i);
		}
		
		
		return upload;
	}
}
