package com.test.admin.customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/customer/admincustomerlist.do")
public class AdminCustomerList extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CustomerDAO dao = new CustomerDAO();
		ArrayList<CustomerDTO> list = dao.getCustomer();
		
		req.setAttribute("list",list);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/customer/adminCustomerList.jsp");
		dispatcher.forward(req, resp);
	}
}
