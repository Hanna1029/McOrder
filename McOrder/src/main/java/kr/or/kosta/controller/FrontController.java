package kr.or.kosta.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FrontController {

	@RequestMapping("/index.htm")
	public String home() {
		return "main.user";
	}
	
	@RequestMapping("/admin.htm")
	public String admin() {
		return "redirect:Admin/manageOrder.htm";
	}
	
	
}
