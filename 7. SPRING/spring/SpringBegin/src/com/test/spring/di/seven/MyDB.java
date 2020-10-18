package com.test.spring.di.seven;

import java.util.ArrayList;

public class MyDB implements IData {

	public ArrayList<String> getList() {
		
		//JDBC -> 오라클 -> 구성원 목록
		
		ArrayList<String> list = new ArrayList<String>();
		
		//while(rs.next()) {
		
		//}
		
		list.add("하하하");
		list.add("호호호");
		list.add("후후후");
		
		return list;
	}

}
