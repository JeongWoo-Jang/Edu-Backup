package com.test.spring;

import java.util.List;

public interface IMemo {
	
	//글쓰기
	int add(MemoDTO dto);
	
	//목록보기
	List<MemoDTO> list();
	
	//수정하기
	MemoDTO get(String seq);
	int edit(MemoDTO dto);
	
	//삭제하기
	int del(String seq);

}
