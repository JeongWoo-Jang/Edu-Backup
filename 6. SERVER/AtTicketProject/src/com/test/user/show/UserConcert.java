package com.test.user.show;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.user.main.BannerDAO;
import com.test.user.main.BannerDTO;

@WebServlet("/userconcert.do")
public class UserConcert extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		HttpSession session = req.getSession();
		String slider = "concertslider";
		String page = "concertbanner";
		
		BannerDAO dao = new BannerDAO();
		HashMap<String,String> map = dao.mainlist(slider);
		BannerDTO dto = dao.banner(page);
		
		req.setAttribute("map", map);
		req.setAttribute("banner", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/userconcert.jsp");
		dispatcher.forward(req, resp);
		
		System.out.println(req.getContextPath());
		System.out.println(session.getAttribute("userid"));
		
	}
	
}
