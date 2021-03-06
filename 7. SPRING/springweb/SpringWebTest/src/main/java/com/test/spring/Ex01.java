package com.test.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

// - 기존의 서블릿 역할을 하는 클래스
// - 서블릿(X)
// - Servlet/JSP MVC 구조 : 서블릿(컨트롤러 역할)

//컨트롤러 선언
//1. Controller 인터페이스 구현
//2. @Controller 어노테이션 사용

//Controller 인터페이스 구현 > DispatcherServlet에 의해서 호출 당할 수 있는 자격을 가지게 된다.
public class Ex01 implements Controller {

	//handleRequest
	// - doGet/doPost 메소드 역할
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//비즈니스 코드 구현(업무 구현)...
		int count = 10; //DB
		String name = "hong";
		
		request.setAttribute("count", count); //*********
		
		//JSP 호출하기
		// - RequestDispatcher 사용(X) -> ModelAndView 사용(O)
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("name", name); //********* requset.setAttribute("name", name) 같은 코드
		
		//mv.setViewName("/WEB-INF/views/ex01.jsp"); //JSP의 위치를 지정한다.
		mv.setViewName("ex01");
		
		return mv; //forward() 호출
	}

}
