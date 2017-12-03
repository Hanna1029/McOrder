package kr.or.kosta.service;

import java.security.Principal;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.dao.MemberDao;
import kr.or.kosta.dto.Member;

@Service
public class MemberService {
	
	@Autowired
	private SqlSession session;
	
	// 회원가입
	public void joinMember(Member member) {
		MemberDao dao = session.getMapper(MemberDao.class);
		
		// member 테이블에 회원아이디 insert
		dao.join(member);
		
	}
	
	// 회원정보수정전 패스워드 맞는지 체크할 때 사용하는 서비스 
	// 패스워드가 getName의 패스워드가 일치하면 멤버 정보를 그대로 리턴으로해서
	// 회원정보수정 인풋창에 다 넣어줄거임 이때 패스워드는 암호화 처리되서 넘어온 값임
	public Member pwdCheck(String afterPwd, Principal principal) {
		 return null;
	}
	
	// 회원정보수정페이지에서 수정버튼누르면 수정됨
	public void editCompleteMember(Member member) {
		
	}
	
	// 회원아이디 찾기
	public Member findMemberId(String name, String phoneNum) {
		return null;
	}
	
	// 회원비밀번호찾기
	public Member findCompletePwd(String id, String phoneNum) {
		return null;
	}
	
	// 쓰는사람 수정 필요성있어보임
	// 회원비밀번호찾기해서 아이디랑 폰번호있으면 회원정보를 가져와서 아이디를 비번변경창에뿌려주고 입력된값으로 비번 변경..?
	public void changeMemberPwd(String id, String pwd) {
		
	}
	
	// 회원탈퇴  아마 업데이트사용해서 enabled 의 값만 바꿔주면 될듯
	public void dropMember(Principal principal) {
		
	}
}
