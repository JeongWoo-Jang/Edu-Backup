package com.test.admin.sales;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminsales.do")
public class AdminSales extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();

		Calendar c = Calendar.getInstance();
		//현재날짜
//		String sdate = c.get(Calendar.YEAR) + "-" + c.get(Calendar.MONTH) + "-" + c.get(Calendar.DATE);
//		String edate = c.get(Calendar.YEAR) + "-" + c.get(Calendar.MONTH) + "-" + c.get(Calendar.DATE);
		
		String sdate = "2020-08-26";
		String edate = "2020-08-26";
		
		SalesDAO dao = new SalesDAO();
		SalesDTO dto = new SalesDTO();

		dto.setSdate(sdate);
		dto.setEdate(edate);
		
		int total = dao.getTotalSales(dto);
		
	
//		ArrayList<SalesDTO> list = dao.getGenreSales(dto);

		String strTotal = String.format("%,d",total);
		
		req.setAttribute("dto", dto);
		req.setAttribute("total", strTotal);
//		req.setAttribute("genreSalesList", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/sales/sales.jsp");
		dispatcher.forward(req, resp);
	}
}
