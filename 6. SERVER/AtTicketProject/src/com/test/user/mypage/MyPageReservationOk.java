package com.test.user.mypage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mypage/mypagereservationok.do")
public class MyPageReservationOk extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String begin = req.getParameter("begin");
		String end = req.getParameter("end");
		String from = req.getParameter("from");
		String to = req.getParameter("to");
		int nowPage = Integer.parseInt(req.getParameter("nowPage"))+1;
		
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("from", from);
		map.put("end", end);
		
		//2.
		MyPageHDAO dao = new MyPageHDAO();
		ArrayList<MyReDTO> list = dao.getlist(map);
		
		dao.close();
		
		//3.
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		PrintWriter writer = resp.getWriter();
		
		String temp = "";
		
		
		//[]
		
		temp += "[";
		
		for (MyReDTO dto : list) {
			temp += "{";
				temp += String.format("\"bookdate\": \"%s\","
					,dto.getBookdate());
				temp += String.format("\"bookseq\": \"%s\","
										,dto.getBookseq());
				temp += String.format("\"showtitle\": \"%s\", "
										, dto.getShowtitle());
				temp += String.format("\"bdate\": \"%s\","
										, dto.getBdate());
				temp += String.format("\"cnt\": \"%s\""
										, dto.getCnt());
				temp += String.format("\"bookstate\": \"%s\","
						,dto.getBookstate());
				temp += String.format("\"nowPage\": \"%d\","
						,nowPage);
			temp += "}";
			temp += ",";
		}
		
		temp = temp.substring(0, temp.length()-1);
		
		temp += "]";
		
		writer.print(temp);
		writer.close();
		
	}
}
