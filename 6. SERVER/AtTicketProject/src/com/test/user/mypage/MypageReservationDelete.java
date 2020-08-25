package com.test.user.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/mypage/mypagereservationdelete.do")
public class MypageReservationDelete extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageHDAO dao = new MyPageHDAO();
		HttpSession session = req.getSession();
		String cusseq = String.valueOf(session.getAttribute("userseq"));
		String nowPage = req.getParameter("nowPage");

		int result = dao.deleteReservation(cusseq);
		PrintWriter writer = resp.getWriter();
		
		if(result == 1) {
			
			resp.sendRedirect(String.format("mypagereservation.do?nowPage=%s",nowPage));
			
		} else {
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('failed');history.back();");
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			writer.close();
		}
	}

}
