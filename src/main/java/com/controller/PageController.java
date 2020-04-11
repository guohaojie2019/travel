package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//专门用于显示页面的控制器
@Controller
@RequestMapping("")
public class PageController {
	
	@GetMapping("/index")
	public String index1() {
		return "/index";
	}
	@GetMapping("/index2")
	public String index2() {
		return "/index2";
	}
	@GetMapping("/Article")
	public String Article() {
		return "/classify/Article";
	}
	@GetMapping("/Route")
	public String Route() {
		return "/classify/Route";
	}
	@GetMapping("/Other")
	public String OtherList() {
		return "/classify/Other";
	}
	
	
	
	@GetMapping("/ArticleRe")
	public String ArticleRe() {
		return "redirect:/Article";
	}
	@GetMapping("/signup")
	public String signup() {
		return "/signup";
	}
	@GetMapping("/PersonalCenter")
	public String PersonalCenter() {
		return "/PersonalCenter";
	}
	@GetMapping("/PCManage")
	public String PCManage() {
		return "PCManage";
	}
	

	// @RequiresPermissions("deleteOrder")
	@RequestMapping("deleteOrder")
	public String deleteOrder() {
		return "deleteOrder";
	}

	// @RequiresRoles("productManager")
	@RequestMapping("deleteProduct")
	public String deleteProduct() {
		return "deleteProduct";
	}

	@RequestMapping("listProduct")
	public String listProduct() {
		return "listProduct";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping("unauthorized")
	public String noPerms() {
		return "unauthorized";
	}

}
