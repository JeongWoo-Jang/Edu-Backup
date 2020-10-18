package com.test.spring.di.two;

import java.util.Scanner;

public class Util {
	
	//의존 주입 1단계
	// - 의존 객체를 멤버 변수로 선언한다.
	private Scanner scan;
	
	//의존 주입 2단계
	// - 의존 객체 주입 도구를 생성한다.(둘 중 하나 선택)
	// a. 생성자
	// b. setter
	
//	public Util(Scanner scan) {
//		this.scan = scan;
//	}
	
	public void setScan(Scanner scan) {
		this.scan = scan;
	}
	
	//본인에게 필요한 의존 객체(scan)를 직접 만들어서 사용하지 않고
	//외부로부터 받아서 사용 -> 의존 객체 주입
	public String getName() {
		
		//Ex02 객체 -> (의존) -> Util 객체 -> (의존) -> Scanner 객체
		
		//Util의 의존 객체
		//Scanner scan = new Scanner(System.in);
		
		System.out.print("이름 : ");
		
		String name = scan.nextLine();
		
		return name;
		
	}
	
	public String getAge() {
		
		System.out.print("나이 : ");
		
		String age = scan.nextLine();
		
		return age;
		
	}

}
