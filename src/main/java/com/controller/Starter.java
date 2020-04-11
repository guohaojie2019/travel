package com.controller;
import java.io.File;
import java.io.FileOutputStream;
 
import javax.servlet.http.HttpServletResponse;
 
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pojo.ImgInfo;
 
@SpringBootApplication
@Controller
public class Starter {
	public static void main(String[] args) {
		SpringApplication.run(Starter.class, args);
	}
 
	@RequestMapping("/upload")
	public String upload() {
		return "index";
	}
 
	@RequestMapping("/test/upload")
	@ResponseBody
	public ImgInfo setImgUrl(@RequestParam("imgFile") MultipartFile file, HttpServletResponse response)
			throws Exception {
		// Get the file and save it somewhere
		byte[] bytes = file.getBytes();
//        System.out.println(new String(bytes));
		String path = "C:\\Users\\wangwang\\eclipse-workspace\\travel\\src\\main\\webapp\\test\\";
		File imgFile = new File(path);
		if (!imgFile.exists()) {
			imgFile.mkdirs();
		}
		String fileName = file.getOriginalFilename();// 文件名称
		System.out.println(path + fileName);
 
		try (FileOutputStream fos = new FileOutputStream(new File(path + fileName))) {
			int len = 0;
			fos.write(bytes);
		} catch (Exception e) {
			e.printStackTrace();
		}
 
		String value = "http://localhost:8080/test/" + fileName;
		String[] values = { value };
 
		ImgInfo imgInfo = new ImgInfo();
		imgInfo.setError(0);
		imgInfo.setUrl(values);
 
		System.out.println(imgInfo.toString());
		return imgInfo;
	}
 
}
