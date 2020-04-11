package com.util;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
	public class MyWebMvcConfigurerAdapter extends WebMvcConfigurerAdapter {
	    @Override
	    public void addResourceHandlers(ResourceHandlerRegistry registry){
	        //指向外部目录
	        registry.addResourceHandler("imgUploads/a").addResourceLocations("file:D:/imgUploads/");
	        super.addResourceHandlers(registry);
	    }
	}
	


