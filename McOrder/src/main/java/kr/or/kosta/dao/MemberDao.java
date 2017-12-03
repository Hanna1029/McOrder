package kr.or.kosta.dao;

import kr.or.kosta.dto.Member;

/*
2017-11-29
02:56
신동민
회원가입 Dao
*/
public interface MemberDao {

	// member 테이블에 회원아이디 insert
	public void join(Member member);
	
	// role 테이블에 회원가입한 회원의 role을 설정
	public void role(Member member);
	
}
