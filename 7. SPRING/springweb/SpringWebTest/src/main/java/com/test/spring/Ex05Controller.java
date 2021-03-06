package com.test.spring;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ex05Controller {
	
	//Ambiguous mapping. Cannot map 'ex05Controller' method
	
	//브라우저 : http://localhost:8090/board/add.action 요청 -> 누가 응답?
	
	//글쓰기(add + addok)
	@RequestMapping(value="/board/add.action")
	public String add() {
		return "ex05";
	}
	
	//스프링 MVC -> 전송된 데이터를 수신하는 방법!!!
	@RequestMapping(value="/board/addok.action")
	public void addok(
						HttpServletRequest request, 
						HttpServletResponse response,
//						String subject, //request.getParameter("subject") 역할
//						String content,
//						String name
						BoardDTO dto,
						String seq
					) {
		
		//현재 상황
		//1. 데이터 가져오기
		//2. DTO 포장
		//3. DAO 호출 + DTO 전달 -> insert
		//4. 마무리
		
		//방법1. 기존에 사용하던 방식 -> request
//		String subject = request.getParameter("subject");
//		String content = request.getParameter("content");
//		String name = request.getParameter("name");
		
//		BoardDTO dto = new BoardDTO();
//		dto.setSubject(subject);
//		dto.setContent(content);
//		dto.setName(name);
		
		
		//방법2. 요청 메소드의 매개변수를 사용(request 사용 안함)
//		BoardDTO dto = new BoardDTO();
//		dto.setSubject(subject);
//		dto.setContent(content);
//		dto.setName(name);
		
		
		//방법3. 요청 메소드의 매개변수를 사용(request 사용 안함)
		
		//BoardDAO dao = new BoardDAO();
		//dao.add(dto);
		
		//확인
		System.out.println(dto);
		System.out.println(seq);
		
		try {
			
			PrintWriter writer = response.getWriter();
			
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>alert('complete');</script>");
			writer.print("</body>");
			writer.print("</html>");
			
			writer.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}










