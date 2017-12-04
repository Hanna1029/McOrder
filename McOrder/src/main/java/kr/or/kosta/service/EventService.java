package kr.or.kosta.service;

/*
* @FileName : EventService
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 김수진, 염주호
*/
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.dao.EventDao;
import kr.or.kosta.dto.Event;

@Service
public class EventService {
	@Autowired
	private SqlSession session;

	/*
	 * @method Name : getEventList
	 * @date : 2017.11.29
	 * @author :2017.11.29. : 염주호
	 * @description : 이벤트 리스트보기 (관리자 사용자 모두)
	 * @param spec :
	 * @return : List<Event>
	 */
	public List<Event> getEventList() throws ClassNotFoundException, SQLException {
		EventDao eventdao = session.getMapper(EventDao.class);
		// EventDao를 가져옴
		List<Event> list = eventdao.getEventList();

		return list;
	}

	/*
	 * @method Name : getEventList
	 * @date : 2017.11.29
	 * @author :2017.11.29. : 염주호
	 * @description : 이벤트 상세보기 (관리자, 사용자 모두 사용)
	 * @param spec : int eventNum
	 * @return : Event
	 */
	public Event getEvent(int eventNum) {
		EventDao eventdao = session.getMapper(EventDao.class);
		Event event = eventdao.getEvent(eventNum);

		return event;
	}

	/*
	 * @method Name : addEvent
	 * @date : 2017.11.29
	 * @author :2017.11.29. : 염주호
	 * @description : 최상위 관리자가 이벤트 등록
	 * @param spec : Event event
	 * @return : void
	 */
	public void addEvent(Event event) {
		System.out.println("service : " + event.toString());
		EventDao eventdao = session.getMapper(EventDao.class);
		eventdao.addEvent(event);
	}

	/*
	 * @method Name : editCompleteEvent
	 * @date : 2017.12.01
	 * @author :2017.12.01. : 김수진
	 * @description : 최상위 관리자가 이벤트 수정
	 * @param spec : Event event
	 * @return : void
	 */
	public void editCompleteEvent(Event event) {
		System.out.println("서비스 시작");

		EventDao eventdao = session.getMapper(EventDao.class);
		eventdao.editCompleteEvent(event);
		System.out.println("서비스 끄읏");
	}

	/*
	 * @method Name : deleteEvent
	 * @date : 2017.12.01
	 * @author :2017.12.01. : 김수진
	 * @description : 최상위 관리자가 이벤트 삭제
	 * @param spec : int eventNum
	 * @return : void
	 */
	public void deleteEvent(int eventNum) {
		EventDao eventdao = session.getMapper(EventDao.class);
		eventdao.deleteEvent(eventNum);
	}

}