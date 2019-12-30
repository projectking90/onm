/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import system.onm.service.OrderService;

/**
 * OrderController 클래스
 * 주문 메뉴 관련 가상 URL 주소로 접속하면 호출되는 메소드를 소유한 컨트롤러 클래스
 * @author Jo
 */
@Controller
public class OrderController {
	/**
	 * 속성변수 선언
	 */
	@Autowired
	private OrderService order_service;	// OrderService 인터페이스를 구현받은 객체를 생성해서 저장

	/**
	 * 메소드 선언
	 */
	@ReqeustMapping(value="#")
	public ModelAndView goChartTestForm(
		OrderRecordDTO order_RecordDTO) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path+"#");
		
		
		
		
		try {
			int 
			List<map<String,String>> order_list = this.order_service(order_RecordDTO);
			
			
			mav.addObject(#, order_list);
			
			
		}catch(Exception e) {
			System.out.println("<# 에러발생>");
			System.out.println(e.getMessage());
			
			
		} // catch
		
		
		} //OrderRecordDTO order_RecordDTO) {
	
	
}		//public ModelAndView goChartTestForm(