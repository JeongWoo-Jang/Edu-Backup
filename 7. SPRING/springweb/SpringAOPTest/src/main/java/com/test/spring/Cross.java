package com.test.spring;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

//보조업무 객체
@Aspect //보조 업무 객체의 자격
@Component
public class Cross {

	//주업무 메소드를 지정 > Point cut 생성
	@Pointcut("execution(public int com.test.spring.Service.getCount())")
	public void pc1() {
		
	}
	
	//보조 업무
	@Before("pc1()")
	public void m1() {
		System.out.println("보조업무가 실행되었습니다.");
	}
	
}
