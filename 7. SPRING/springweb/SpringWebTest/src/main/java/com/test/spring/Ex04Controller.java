package com.test.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//컨트롤러 구현
//1. Controller 인터페이스 구현
//2. @Controller 어노테이션 사용

//서블릿 역할
@Controller
@RequestMapping(value="/ex04.action")
public class Ex04Controller {

	//요청 메소드 > handleRequest
	// -> 맘대로...
	
	//doGet()/doPost()
	@RequestMapping
	public String test() {
		
		//업무 구현..
		
		//JSP 호출하기
		return "ex04";
		
	}
	
}
