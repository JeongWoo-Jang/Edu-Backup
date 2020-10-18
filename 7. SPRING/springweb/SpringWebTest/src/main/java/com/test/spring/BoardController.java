package com.test.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//http://localhost:8090/spring/list.action
@Controller
//@RequestMapping(value="/list.action")
public class BoardController {

	//글 목록
	@RequestMapping(value="/list.action")
	public String list() {
		
		return "list"; //WEB-INF/views/list.jsp
	}
	
	@RequestMapping(value="/add.action")
	public String add() {
		
		return "add";
	}
	
//	@RequestMapping(value="/addok.action")
//	public String addok() {
//		
//		//PrintWriter 출력 구현
//	}
	
	@RequestMapping(value="/view.action")
	public String view() {
		
		return "view";
	}
	
}
