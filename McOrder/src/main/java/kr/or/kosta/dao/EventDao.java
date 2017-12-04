package kr.or.kosta.dao;
/*
* @FileName : EventDao
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 최한나, 염주호, 김수진
*/ 
import java.util.List;

import kr.or.kosta.dto.Event;

public interface EventDao {

	/*
	 * @method Name : getEventList
	 * @date : 2017.11.28
	 * @author :2017.11.28. : 김수진, 염주호
	 * @description : 이벤트 리스트 보기
	 * @param spec : 
	 * @return : List<Event>
	 */
	public List<Event> getEventList();
	
	/*
	 * @method Name : getEvent
	 * @date : 2017.11.28
	 * @author :2017.11.28. : 김수진, 염주호
	 * @description : 이벤트 상세 정보 가져오기
	 * @param spec : int eventNum
	 * @return : Event
	 */
	public Event getEvent(int eventNum);
	
	/*
	 * @method Name : addEvent
	 * @date : 2017.11.28
	 * @author :2017.11.28. : 김수진, 염주호
	 * @description : 관리자가 이벤트 등록(insert)
	 * @param spec : Event event
	 * @return : int
	 */
	public int addEvent(Event event);
	
	/*
	 * @method Name : editCompleteEvent
	 * @date : 2017.11.30
	 * @author :2017.11.30. : 김수진
	 * @description : 관리자가 이벤트 수정(update)
	 * @param spec : Event event
	 * @return : int
	 */
	public int editCompleteEvent(Event event);
	
	/*
	 * @method Name : deleteEvent
	 * @date : 2017.11.30
	 * @author :2017.11.30. : 김수진
	 * @description : 관리자가 이벤트 삭제
	 * @param spec : int eventNum
	 * @return : void
	 */
	public void deleteEvent(int eventNum);
	
}
