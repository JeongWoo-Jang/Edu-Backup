package com.test.spring.di.one;

public class Ex01 {

	public static void main(String[] args) {
		
		//요구사항] 사용자에게 이름을 입력받아 인사하시오.
		
		//Ex01 객체 <-> Util 객체
		// - Ex01 객체가 Util 객체를 의존한다.
		// -> Util 객체 = 의존 객체
		
		Util util = new Util();
		
		String name = util.getName();
		
		System.out.printf("안녕하세요. %s님\n", name);
		
	}
	
}
