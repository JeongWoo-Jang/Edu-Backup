package com.test.spring;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DAO {

	@Autowired
	private SqlSessionTemplate template;

	//DAO에서 메소드 1개는 1개의 SQL만 실행한다.
	//1개의 메소드안에서 2개 이상의 SQL을 실행하는 것을 권장하지 않는다.
	
	public int add(DTO dto) {
		
		return template.insert("tran.add", dto);
	}

	public int point(DTO dto) {
		
		return template.update("tran.point", dto);
	}

}
