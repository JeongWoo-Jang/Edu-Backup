package com.test.admin.show;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminshowaddok.do")
public class AdminShowAddOk extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//공연 추가
		//1. 상영관 찾기 > 번호 가져오기
		//2. 데이터 추가하기
		// - 공연 테이블 + 회차정보 테이블 + 태그 테이블
		
		req.setCharacterEncoding("UTF-8");
		
		String genre = req.getParameter("genre");
		String title = req.getParameter("name");
		String openDate = req.getParameter("openDate");
		String startDate = req.getParameter("startDate");
		String endDate = req.getParameter("endDate");
		String price = req.getParameter("price");
		int min = Integer.parseInt(req.getParameter("min"));
		String age = req.getParameter("age");
		String round = req.getParameter("round");
		String time = req.getParameter("time");
		String place = req.getParameter("theater");
		String agency = req.getParameter("agency");
		
		//파일 업로드 ????
		String content = req.getParameter("showcontent");
		String poster = req.getParameter("poster");
		
		ShowDTO dto = new ShowDTO();
		
		dto.setAge(age);
		dto.setAgency(agency);
		dto.setContent(content);
		dto.setEndDate(endDate);
		dto.setGenre(genre);
		dto.setOpenDate(openDate);
		dto.setPoster(poster);
		dto.setPrice(price);
		dto.setStartDate(startDate);
		dto.setTitle(title);
		dto.setMin(min);
		dto.setRound(round);
		dto.setTime(time);
		
		dto.setPoster(poster);
		dto.setContent(content);
		
		//DB 넘기기
		ShowDAO dao = new ShowDAO();
		
		//2-1 공연 테이블 추가
		int resultShow = dao.addShow(dto);
		dto.setSeq(dao.searchSeq());

		//2-2 회차 테이블 추가
		int resultRound = dao.addRound(dto);
		
		//2-3 태그 테이블 추가
		
		//결과
		if(resultShow == 1 && resultRound == 1) {
			//글쓰기 성공 -> 게시판 목록 보기로 이동
			resp.sendRedirect("/AtTicketProject/adminshow.do");
		}else {
			//글쓰기 실패
			PrintWriter writer = resp.getWriter();
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('add show failed'); history.back();");
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			writer.close();
		}
		
	}
	
}
