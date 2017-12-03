package kr.or.kosta.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.View;

import kr.or.kosta.dto.Member;
import kr.or.kosta.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private View jsonview;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	
	// 로그인 화면
	@RequestMapping("/login.htm")
	public String login() {
		return "login.member";
	}
	
	// 회원가입 페이지 get 방식으로 폼만 보여주기
	@RequestMapping(value="/join.htm", method=RequestMethod.GET)
	public String showJoinForm() {
		return "join.member";
	}
	
	// 회원가입 post 방식으로 폼에서 넘어오면!!! 들어온 패스워드 암호화 set해서 넘겨!!!!!
	@RequestMapping(value="/join.htm", method=RequestMethod.POST)
	public String joinMember(Member member) throws Exception {
		member.setPassword(this.bCryptPasswordEncoder.encode(member.getPassword()));
		memberService.joinMember(member);
		return "login.member";
	}
	
	// 로그인 성공시 로그인 한 사람이 관리자인지, 사용자인지 확인 후 redirect
	@RequestMapping(value="/loginSuccess.htm", method=RequestMethod.GET)
	public String loginSuccess() {
		
		return "login.member";
	}
	
	// 로그인 get 방식으로 뷰단만 보여주기 시큐리티xml에 뷰단으로 사용할거임
	public String showLoginForm() {
		return null;
	}
	
	// 회원 정보 수정 페이지로 갈때 비밀번호 한번더 체크해보려고 일단 체크페이지만 보여주자(get방식)
	public String showPwdCheck() {
		return null;
	}
	
	// 비밀번호 확인 클릭하면 비밀번호 맞는지 체크하고 맞으면 그 해당 회원 정보 리턴받아서 가지고
	// 회원정보수정페이지로 넘어가서 뿌려줄거임
	public String showEditMember(String beforePwd, Principal principal, Model model) {
		return null;
	}
	
	// 회원정보수정페이지에서 수정완료 클릭하면 실행
	public String editCompleteMember(Member member) {
		return null;
	}
	
	// 이름이랑 폰넘버 받아서 아이디를 찾아 그리고 비동기로 데이터넘겨서 알려줄거임
	public View findMemberId(String name, String phoneNum, ModelMap map) {
		return jsonview;
	}
	
	// 아이디랑 폰넘버 받아서 해당 회원을 찾고 있으면 패스워드 수정창  비동기로 띄워줄거임
	public View findCompletePwd(String id, String phoneNum, ModelMap map) {
		return jsonview;
	}
	
	// 비밀번호 수정창에서 비밀번호 변경 하면 변경을하고 메인으로 보낼 거임
	public String changeMemberPwd(String id, String pwd) {
		return null;
	}
	
	// 회원탈퇴 후 메인 으로 가자 이�� 탈퇴는 enabled 값 수정이다!!!!!!
	public String dropMember(Principal principal) {
		return null;
	}
}
