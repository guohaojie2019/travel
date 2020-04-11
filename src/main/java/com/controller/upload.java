package com.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

public class upload {
	@RequestMapping("/upload")
	@ResponseBody
	public Map<String, String> upload(@RequestParam(value="myFileName") MultipartFile file, HttpServletRequest request) {
	        String separator = System.getProperty("file.separator");
	          separator=separator.replaceAll("\\\\","/");
	        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() +           request.getContextPath()+ separator; //获取项目路径+端口号 比如：http://localhost:8080/
	        
	    try {
	        String filePath="";
	        //获取源文件
	        filePath="D:/imgUploads/" ;//存储地址，此处也可以在application.yml中配置对象用@Value("${*.**}")注解注入内容
	        String filename = file.getOriginalFilename();//获取图片名
	        String[] names=filename.split("\\.");//获取后缀格式
	        String uploadFileName=UUID.randomUUID().toString()+"."+names[names.length-1];//生成新图片
	        File targetFile = new File (filePath,uploadFileName);//目标文件
	        if (!targetFile.getParentFile().exists()){
	            targetFile.getParentFile().mkdirs();
	        }
	        //传图片一步到位
	        file.transferTo(targetFile);
	          Map<String, String> map = new HashMap<String, String>();
	        map.put("data",basePath+"imgUploads/"+uploadFileName);//这里应该是项目路径，返回前台url
	        return map;
	    } catch (Exception e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	        return  null;
	    }
	}

}
