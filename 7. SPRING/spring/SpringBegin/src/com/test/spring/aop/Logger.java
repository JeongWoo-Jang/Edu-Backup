package com.test.spring.aop;

import java.util.Calendar;

import org.aspectj.lang.ProceedingJoinPoint;

//보조 업무 클래스
// - 주 업무 코드와 보조업무 코드를 분리 -> 재사용
public class Logger {
	
	//로그 기록 - 보조 업무
	
	//1. After Advice 구현
	// - 보조업무를 주업무 실행 직후에 실행~
	public void after() {
		System.out.println("[log] 주업무를 실행했습니다.");
	}
	
	//2. Before Advice 구현
	// - 보조업무를 주업무 실행 직전에 실행~
	// - 인증 처리
	public void before() {
		System.out.printf("[log] %tT\n", Calendar.getInstance());
	}
	
	//3. Around Advice 구현
	// - 보조업무를 주업무 실행 직전과 실행 직후에 실행~
	public void around(ProceedingJoinPoint joinPoint) throws Throwable {
		
		//보조 업무 실행
		long start = System.currentTimeMillis();
		System.out.println("[log] 시간 기록을 시작합니다.");
		
		//주업무 실행 (글쓰기, 수정, 삭제 등..)
		// -> 주업무 메소드 참조
		try {
			
			//memo.add()
			joinPoint.proceed(); //memo.add() or memo.read() 메소드를 가상으로 매핑(대리 호출)
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//보조 업무 실행
		long end = System.currentTimeMillis();
		System.out.println("[log] 시간 기록을 종료합니다.");
		System.out.printf("[log] 주업무 실행 소요 시간 : %s\n", end - start + "ms");
		
	}
	
	//4. After Throwing Advice 구현
	// - 주업무 실행 중 예외가 발생하면 같이 실행해야하는 보조 업무
	public void afterthrowing(Exception e) {
		System.out.printf("[log] '%s' 예외 발생으로 관리자에게 메일을 발송했습니다.\n", e.getMessage());
	}
	
	//5. After Returning Advice 구현
	// - 주업무 실행 후 반환값을 사용하는 보조 업무
	public void afterreturning(Object obj) {
		System.out.printf("[log] %s번 메모가 검색되었습니다.\n", obj);
	}
	
}





















