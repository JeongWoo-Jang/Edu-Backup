package com.test.user.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/usermypage.do")
public class UserMypage extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("asd");
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/mypage/usermypage.jsp");
		dispatcher.forward(req, resp);
		
		
	}
	
}
