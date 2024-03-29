package com.test.jsp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/ex23_formok.do")
public class Ex23_FormOk extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String path = req.getRealPath("/files");
		
		int size = 1024 * 1024 * 100; //100MB
		
		String subject = "";
		String name = "";
		
		ArrayList<String> filename = new ArrayList<String>();
		ArrayList<String> orgfilename = new ArrayList<String>();
		
		req.setCharacterEncoding("UTF-8");
		
		try {
			
			MultipartRequest multi = new MultipartRequest(
									req,
									path,
									size,
									"UTF-8",
									new DefaultFileRenamePolicy()
									);
			
			subject = multi.getParameter("subject");
			name = multi.getParameter("name");
			
			//파일명 알아내기
			//모든 <input type="file">의 이름들
			Enumeration e = multi.getFileNames();
			
			while (e.hasMoreElements()) {
				String file = (String)e.nextElement();
				//System.out.println(file);
				
				filename.add(multi.getFilesystemName(file));
				orgfilename.add(multi.getOriginalFileName(file));
			}
			
			req.setAttribute("filename", filename);
			req.setAttribute("orgfilename", orgfilename);
			
		} catch (Exception e) {
			System.out.println(e);
		}
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/ex23_formok.jsp");
		dispatcher.forward(req, resp);
		
		
	}

}
