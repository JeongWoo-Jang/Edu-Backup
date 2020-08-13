package com.test.admin.banner;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.user.main.BannerDAO;
import com.test.user.main.BannerDTO;

@WebServlet("/admin/adminbannermain.do")
public class AdminBannerMain extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		BannerDAO dao = new BannerDAO();
		String page = "mainbanner";
		
		BannerDTO dto = dao.getlist(page);
		
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/banner/adminbannermain.jsp");
		dispatcher.forward(req, resp);
		
		
	}
}
