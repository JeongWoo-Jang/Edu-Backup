package com.test.user.main;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/usermypage.do")
public class UserMypage extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		UserDAO dao = new UserDAO();
		ArrayList<CouponDTO> clist = dao.getCoupon((int)session.getAttribute("userseq"));
		ArrayList<EventDTO> elist = dao.getEvent();

		
		req.setAttribute("clist", clist);
		req.setAttribute("elist", elist);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/mypage/usermypage.jsp");
		dispatcher.forward(req, resp);
		
	}
	
}
