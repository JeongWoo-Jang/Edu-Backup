package com.test.user.show;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/userpromotionadd.do")
public class UserPromotionAdd extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//여기서 직접적으로 쿠폰 추가를 수행할것이다.
		
		HttpSession session = req.getSession();//세션을 불러온다.
		//String memberSeq = (String)session.getAttribute("userseq");//회원의 번호가 떨어질것이다.
		String memberSeq = "1";//테스트용
		
		UserPromotionDAO dao = new UserPromotionDAO();
		dao.addCoupon(memberSeq);
		
		resp.sendRedirect("/AtTicketProject/userpromotion.do");
		
		
	}
}
