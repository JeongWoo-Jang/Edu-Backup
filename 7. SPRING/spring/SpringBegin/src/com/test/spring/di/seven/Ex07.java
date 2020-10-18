package com.test.spring.di.seven;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex07 {
	
	public static void main(String[] args) {
		
		//m1();
		m2();
		
	}

	private static void m2() {
		
		//1. 전체 설정 관리 : 자바 ->
		
		
		
		//DI 구현 + 스프링 DI
		ApplicationContext context = new ClassPathXmlApplicationContext("config07.xml");
		
		//IData data = new MyFile();
		//IData data = new MyDB();
		
		//IData data = (IData)context.getBean("file");
		
		//Service service = new Service(data); //생성자를 통한 의존 주입
		
		Service service = (Service)context.getBean("service");
		
		ArrayList<String> list = service.getList();
		
		for (String name : list) {
			System.out.println(name);
		}
		
	}

	private static void m1() {
		
		//Ex07 -> (의존, 위임) -> Service -> (의존, 위임) -> IData(MyFile, MyDB)
		//IData data = new MyFile();
		IData data = new MyDB();
		
		Service service = new Service(data); //생성자를 통한 의존 주입
		
		ArrayList<String> list = service.getList();
		
		for (String name : list) {
			System.out.println(name);
		}
		
	}

}