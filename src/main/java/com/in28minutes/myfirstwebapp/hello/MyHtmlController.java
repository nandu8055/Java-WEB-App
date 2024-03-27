package com.in28minutes.myfirstwebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyHtmlController {
	@RequestMapping("My-html")
	public String MyHtml() {
		return "MyHtml";
	}
}
