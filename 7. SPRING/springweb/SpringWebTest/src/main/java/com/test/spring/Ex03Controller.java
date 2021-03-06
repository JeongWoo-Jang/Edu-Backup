package com.test.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

//1. 컨트롤러 선언
// - new Ex03Controller(dao)
public class Ex03Controller implements Controller{

   private TestDAO dao; //B.
   
   public Ex03Controller() {
      this.dao = null;
   }
   
   public Ex03Controller(TestDAO dao) { //C.
      this.dao = dao;
   }
   
   public void setDao(TestDAO dao) { //C.
      this.dao = dao;
   }
   
   //2. 요청 메소드(doGet, doPost)
   @Override
   public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
      
      //3. 업무 구현(DB)
      //TestDAO dao = new TestDAO();//의존 객체 A.  
            
      //int count = 100;
      
      int count = dao.getCount(); //업무 위임
      
      //4. JSP 호출하기
      ModelAndView mv = new ModelAndView(); //뷰 호출
      
      mv.addObject("count",count); //request.setAttribute("count",count);
      
      mv.setViewName("ex03");//넘겨주기
      
      
      return mv;
   }

}