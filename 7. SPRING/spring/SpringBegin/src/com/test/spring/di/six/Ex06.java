package com.test.spring.di.six;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex06 {

	public static void main(String[] args) {
		
		//의존 객체 -> DI 방식으로 전환 -> 스프링를 사용해서 전환
		//Service service = new Service();
		
		//m1();
		//m2();
		m3();
		
	}

	private static void m3() {
		
		User user1 = new User();
		
		user1.setName("홍길동");
		user1.setAge(20);
		
		System.out.println(user1.getName());
		System.out.println(user1.getAge());
		
		
		
		
		//스프링 방식
		ApplicationContext context = new ClassPathXmlApplicationContext("config06.xml");
		
		User user2 = (User)context.getBean("user");
		
		user2.setName("아무개");
		user2.setAge(22);
		
		System.out.println(user2.getName());
		System.out.println(user2.getAge());
		
		
		
		//<bean id="user2" class="com.test.spring.di.six.User">
		//	<property name="name" value="하하하"></property>
		//</bean>
 		User user3 = (User)context.getBean("user2");
 		
 		System.out.println(user3.getName());
 		System.out.println(user3.getAge());
 		
		
	}

	private static void m2() {
		
		//스프링 -> 객체 생성 -> 자바(X) -> 스프링 통해서 객체 생성(O)
		
		//config06.xml의 설정을 읽어들여라..
		// -> <bean> 정의
		ApplicationContext context = new ClassPathXmlApplicationContext("config06.xml");
		
		//Service service = new Service();
		Service service = (Service)context.getBean("s1");
		
		String result = service.test();
		
		System.out.println(result);
		
		
	}

	private static void m1() {
		
		//Ex06 -> (의존) -> Service
		Service service = new Service(); //의존 객체
		
		String result = service.test();
		
		System.out.println(result);
		
		
	}
	
}
















