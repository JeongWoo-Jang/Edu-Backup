package com.test.admin.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/customer/admincustomerinfo.do")
public class AdminCustomerInfo extends HttpServlet {
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String search = req.getParameter("search");
			String page = req.getParameter("page");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/customer/adminCustomerInfo.jsp");
			dispatcher.forward(req, resp);
			
			req.setAttribute("search", search);
			req.setAttribute("page", page);
			
		}
}
