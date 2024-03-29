package com.test.spring;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemoController {
	
	//DAO
	@Autowired //아래 변수에다가 객체를 자동으로 생성해서 넣어라!!! - 의존주입 - 의존주입 어노테이션
	private IMemo dao; // = new MemoDAO();
	
	//템플릿 작업
	@RequestMapping(value="/template.action", method={RequestMethod.GET})
	public String template(HttpServletRequest request, HttpServletResponse response) {
		
		return "template";
	}
	
	//메모 쓰기
	@RequestMapping(value = "/add.action", method = { RequestMethod.GET })
	public String add(HttpServletRequest request, HttpServletResponse response) {

		return "add";
	}
	
	//메모 쓰기
	@RequestMapping(value = "/addok.action", method = { RequestMethod.POST })
	public void addok(HttpServletRequest request, HttpServletResponse response, MemoDTO dto) { //1.

		//1. 데이터 가져오기
		//2. DB 작업 -> insert
		//3. 마무리
		
		//2.
		int result = dao.add(dto);
		
		//3.
		response.setCharacterEncoding("UTF-8");
		
		try {
			
			PrintWriter writer = response.getWriter();
			
			writer.print("<html>");
			writer.print("<head>");
			writer.print("<meta charset='UTF-8'>");
			writer.print("</head>");
			writer.print("<body>");
			writer.print("<script>");
			
			if (result == 1) {
				writer.print("alert('성공'); location.href='/spring/index.action';");
			} else {
				writer.print("alert('실패'); history.back();");
			}
			
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	} //addok
	
	//메모 보기(목록 보기)
	@RequestMapping(value = "/index.action", method = { RequestMethod.GET })
	public String index(HttpServletRequest request, HttpServletResponse response) {

		//List
		//1. 데이터 가져오기
		//2. JSP 호출하기 + 결과 전달하기
		
		//1.
		List<MemoDTO> list = dao.list();
		
		//2.
		request.setAttribute("list", list);

		return "index";
	}
	
	@RequestMapping(value = "/edit.action", method = { RequestMethod.GET })
	public String edit(HttpServletRequest request, HttpServletResponse response, String seq) { //1.

		//메모 수정하기
		//1. 데이터 가져오기
		//2. DB 작업 -> select
		//3. JSP 호출하기 + DTO 전달하기
		
		//2.
		MemoDTO dto = dao.get(seq);
		
		//3.
		request.setAttribute("dto", dto);

		return "edit";
	}
	
	@RequestMapping(value = "/editok.action", method = { RequestMethod.POST })
	public void editok(HttpServletRequest request, HttpServletResponse response, MemoDTO dto) { //1.

		//메모 수정하기
		//1. 데이터 가져오기
		//2. DB 작업 -> update
		//3. 결과 출력

		//2.
		int result = dao.edit(dto);
		
		//3.
		response.setCharacterEncoding("UTF-8");
		
		try {
			
			PrintWriter writer = response.getWriter();
			
			writer.print("<html>");
			writer.print("<head>");
			writer.print("<meta charset='UTF-8'>");
			writer.print("</head>");
			writer.print("<body>");
			writer.print("<script>");
			
			if (result == 1) {
				writer.print("alert('성공'); location.href='/spring/index.action';");
			} else {
				writer.print("alert('실패'); history.back();");
			}
			
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping(value = "/del.action", method = { RequestMethod.GET })
	public String del(HttpServletRequest request, HttpServletResponse response, String seq) {

		//메모 삭제
		//1. 데이터 가져오기
		//2. JSP 호출하기 + 데이터 전달하기
		
		request.setAttribute("seq", seq);

		return "del";
	}
	
	@RequestMapping(value = "/delok.action", method = { RequestMethod.GET })
	public void delok(HttpServletRequest request, HttpServletResponse response, String seq) { //1.

		//1. 데이터 가져오기
		//2. DB 작업 -> delete
		//3. 결과 출력
		
		//2.
		int result = dao.del(seq);
		
		//3.
		response.setCharacterEncoding("UTF-8");
		
		try {
			
			PrintWriter writer = response.getWriter();
			
			writer.print("<html>");
			writer.print("<head>");
			writer.print("<meta charset='UTF-8'>");
			writer.print("</head>");
			writer.print("<body>");
			writer.print("<script>");
			
			if (result == 1) {
				writer.print("alert('성공'); location.href='/spring/index.action';");
			} else {
				writer.print("alert('실패'); history.back();");
			}
			
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}





















