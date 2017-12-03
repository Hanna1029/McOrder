package kr.or.kosta.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.View;

import kr.or.kosta.dto.Event;
import kr.or.kosta.service.EventService;

@Controller
public class EventController {

	@Autowired
	private EventService eventService;
	
	@Autowired
	private View jsonview;
	
	// 이벤트 리스트보기 (어플)
	public String showEventList(Model model) {
		return null;
	}
	
	// 이벤트 리스트보기 (관리자페이지) 하위 최상위 다볼 수 있음
	public String showEventListAdmin(Model model) {
		return null;
	}
	
	// 이벤트 내용 상세보기(어플)
	public String showEventDetail(int eventNum, Model model) {
		return null;
	}
	
	// 이벤트 상세보기 (관리자페이지)
	public String showEventDetailAdmin(int eventNum, Model model) {
		return null;
	}
	
	// 최상위 관리자가 이벤트 등록
	public String addEvent(Event event) {
		return null;
	}
	
	// 관리자가 이벤트 수정할 때 수정 페이지 get방식으로 뿌리는 것
	// dao 에서 event 객체 받아서 수정페이지에 내용 주자
	public String showEditEventForm(int eventNum, Model model) {
		return null;
	}
	
	// 관리자가 수정 후 리스트로 돌아간다.
	public String editCompleteEvent(Event event) {
		return null;
	}
	
	// 관리자가 이벤트 삭제했을때 > 비동기로? 아니다 페이지전환으로 리스트페이지로 다시가
	public String deleteEvent(int eventNum, Model model) {
		return null;
	}
	
	
	
	
	
}
