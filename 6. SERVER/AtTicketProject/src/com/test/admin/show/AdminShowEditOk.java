package com.test.admin.show;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/adminshoweditok.do")
public class AdminShowEditOk extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//공연 추가
		//1. 상영관 찾기 > 번호 가져오기
		//2. 데이터 추가하기
		// - 공연 테이블 + 회차정보 테이블 + 태그 테이블
		
		req.setCharacterEncoding("UTF-8");
		
		//파일 업로드
		String path = req.getRealPath("/images");
		System.out.println(path);
		int size = 1024 * 1024 * 10; //100MB
		String filename = ""; //첨부파일명
		String orgfilename = ""; //첨부파일명
		String filename2 = ""; //첨부파일명
		String orgfilename2 = ""; //첨부파일명

		try {
			// 기존의 request를 대신할 객체
			// cos.jar
			// MultipoartRequest 객체를 만드는 순간 파일업로드도 같이 진행된다.
			MultipartRequest multi = new MultipartRequest(	req, //기존의 request 객체
					path, //업로드 폴더
					size, //업로드 크기
					"UTF-8", //인코딩
					new DefaultFileRenamePolicy() //파일이 같은 이름이면 넘버링해줌
					);

			//첨부파일명
			filename = multi.getFilesystemName("poster");
//			System.out.println(filename);
			
			orgfilename = multi.getOriginalFileName("poster"); //내려받을땐 원본이름으로 받게 하기 위한 이름 저장 변수
//			System.out.println(orgfilename);
			
			MultipartRequest multi2 = new MultipartRequest(	req, //기존의 request 객체
					path, //업로드 폴더
					size, //업로드 크기
					"UTF-8", //인코딩
					new DefaultFileRenamePolicy() //파일이 같은 이름이면 넘버링해줌
					);

			//첨부파일명
			filename = multi2.getFilesystemName("showcontent");
			orgfilename = multi.getOriginalFileName("showcontent"); //내려받을땐 원본이름으로 받게 하기 위한 이름 저장 변수
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		String seq = req.getParameter("seq");
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
		
		dto.setSeq(seq);
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
		dto.setPlace(place);
		
		dto.setPoster(poster);
		dto.setContent(content);
		
		//DB 넘기기
		ShowDAO dao = new ShowDAO();
		
		//2-1 공연 테이블 추가
		int resultShow = dao.editShow(dto);
		dto.setSeq(dao.searchSeq());

		//2-2 회차 테이블 추가
		int resultRound = dao.editRound(dto);
		
		//2-3 태그 테이블 추가
		
		//결과
		if(resultShow == 1 && resultRound == 1) {
			//글쓰기 성공 -> 게시판 보기로 이동
			resp.sendRedirect("/AtTicketProject/adminshowview.do?seq="+seq);
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
