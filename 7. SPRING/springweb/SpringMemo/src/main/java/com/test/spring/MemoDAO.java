package com.test.spring;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

//@Autowired에 의해서 객체를 생성하겠습니다. - 자격 부여
//@Repository - 데이터 저장소
@Repository
public class MemoDAO implements IMemo {
	
	//JDBC -> Spring JDBC 사용
	
	private DriverManagerDataSource dataSource; //Connection 역할
	private JdbcTemplate template; //Statement + ResultSet 역할
	
	public MemoDAO() {
		//DB 연결
		this.dataSource = new DriverManagerDataSource();
		this.dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		this.dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
		this.dataSource.setUsername("hr");
		this.dataSource.setPassword("java1234");
		
		//template 생성
		this.template = new JdbcTemplate(this.dataSource);
		
	}

	@Override
	public int add(MemoDTO dto) {
		
		//Spring JDBC 방식 -> PreparedStatement 방식 + 업그레이드
		String sql = "INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (SEQMEMO.NEXTVAL, ?, ?, DEFAULT)";
		
		//SQL 실행
		//stat.executeUpdate() -> template.update()
		//stat.executeQuery() -> template.query()
		
//		Object[] args = new Object[2];
//		args[0] = dto.getName();
//		args[1] = dto.getMemo();
//		
//		int result = this.template.update(sql, args);
//		
//		return result;
		
		return this.template.update(sql, new Object[] {dto.getName(), dto.getMemo() });
	}

	@Override
	public List<MemoDTO> list() {
		
		//메모 목록보기
		String sql = "SELECT * FROM TBLMEMO ORDER BY SEQ DESC";
		
		//기존 방식
		//1. Statement -> executeQuery()
		//2. ResultSet -> while(rs.next()) -> List<MemoDTO> + MemoDTO + setXXX(rs.getXXX)
		
		//BeanPropertyRowMapper
		//BeanProperty + Row = Mapper
		// -> Bean : 자바 객체(인스턴스) -> MemoDTO
		// -> Property : setter, getter
		// -> Row : DB 레코드
		// -> Mapper : 연결시켜주는 작업
		
		//** 주의 (이름 통일)
		
		return this.template.query(sql, new BeanPropertyRowMapper<MemoDTO>(MemoDTO.class));
	}

	@Override
	public int edit(MemoDTO dto) {
		
		String sql = "UPDATE TBLMEMO SET NAME = ?, MEMO = ? WHERE SEQ = ?";
		
		return this.template.update(sql, new Object[] { dto.getName(), dto.getMemo(), dto.getSeq() });
	}

	@Override
	public MemoDTO get(String seq) {
		
		String sql = "SELECT * FROM TBLMEMO WHERE SEQ = ?";
		
		//Spring JDBC
		//1. 인자값 -> new Object[]
		//2. 반환값
		//	a. query() -> List<DTO> 반환
		//	b. queryForObject() -> DTO 반환
		//	b. queryForInt() -> 정수 1개 반환
		
		return this.template.queryForObject(sql, new Object[] { seq }, new BeanPropertyRowMapper<MemoDTO>(MemoDTO.class));
	}
	
	@Override
	public int del(String seq) {
		
		String sql = "DELETE FROM TBLMEMO WHERE SEQ = ?";
		
		return this.template.update(sql, new Object[] { seq });
	}

}











