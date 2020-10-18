package com.test.spring.aop;

public interface IMemo {
   
   //a. 메모 쓰기
   void add(String memo);
   
   //b. 메모 읽기 - 예외 발생 가능성 있는 업무
   void read(int seq) throws Exception;
   
   //c. 메모 수정하기
   void edit(String memo);
   
   //d. 메모 삭제하기
   void delete(int seq);
   
   //e. 메모 검색하기
   int search(String word);
   
}