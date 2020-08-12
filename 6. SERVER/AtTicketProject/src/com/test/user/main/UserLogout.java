package com.test.user.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/userlogout.do")
public class UserLogout extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		session.invalidate();//로그아웃을 했으니 세션을 비워준다
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/userindex.jsp");
		dispatcher.forward(req, resp);
		
	}
	
}
