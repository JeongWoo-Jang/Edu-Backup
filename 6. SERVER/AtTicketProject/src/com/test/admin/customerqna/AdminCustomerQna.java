package com.test.admin.customerqna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//고객이 관리자에게 보내는 메시지
@WebServlet("/admincustomerqna.do")
public class AdminCustomerQna extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/customerqna/admincustomerqna.jsp");
		dispatcher.forward(req, resp);
		
		
	}
}
