package com.test.spring.aop;

public class Memo implements IMemo {

	@Override
	public void add(String memo) {
		System.out.printf("메모 쓰기 : %s\n", memo);
	}
	
	@Override
	public void read(int seq) throws Exception {
		
		if (seq != 5) {
			System.out.printf("메모 읽기 : %d\n", seq);
		} else {
			throw new Exception("존재하지 않는 메모입니다.");
		}
	}
	
	@Override
	public void edit(String memo) {
		System.out.printf("메모 수정 : %s\n", memo);
	}
	
	@Override
	public void delete(int seq) {
		System.out.printf("메모 삭제 : %d\n", seq);
	}
	
	@Override
	public int search(String word) {
		
		if (word.contains("메모")) {
			return 3;
		} else if (word.contains("길동")) {
			return 10;
		}
		
		return 0;
	}
	
}
