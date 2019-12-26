/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import system.onm.dto.OrderDTO;
import system.onm.dto.OrderSearchDTO;
import system.onm.dto.StoreSearchDTO;
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
	private final String path = "Order/";	// jsp 경로
	@Autowired
	private OrderService order_service;	// OrderService 인터페이스를 구현받은 객체를 생성해서 저장

	/**
	 * 메소드 선언
	 */
	/**
	 * 고객이 주문하기 클릭 시 보여줄 jsp와 등록된 가게의 목록을 보여주는 메소드
	 * 가상주소 /order_cus_form.onm로 접근하면 호출
	 * @param store_searchDTO : 가게들을 보여주기 위해 사용하는 DTO
	 * @return mav : /order_cus_form.onm에 맵핑되는 jsp 파일과 가게 목록
	 */
	@RequestMapping(value="/order_cus_form.onm")
	public ModelAndView goOrderCustomForm(
			StoreSearchDTO store_searchDTO) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_cus_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goOrderCustomForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	/**
	 * 고객이 주문하기에서 가게 선택 시 보여줄 jsp와 가게에 등록된 메뉴를 보여주는 메소드
	 * 가상주소 /order_cus_detail_form.onm로 접근하면 호출
	 * @param s_no : 가게번호
	 * @return mav : /order_cus_detail_form.onm에 맵핑되는 jsp 파일과 가게 메뉴 목록
	 */
	@RequestMapping(value="/order_cus_detail_form.onm")
	public ModelAndView goOrderCustomDetailForm(
			@RequestParam(value="s_no") int s_no) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_cus_detail_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goOrderCustomDetailForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 고객이 메뉴를 주문 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /order_cus.onm로 접근하면 호출
	 * @param orderDTO : 주문을 하기 위해 사용하는 DTO
	 * @return insert_result : 주문하기 Query 실행 결과
	 */
	@RequestMapping(value="/order_cus.onm")
	@ResponseBody
	public int insertOrder(
			OrderDTO orderDTO) {
		int insert_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<insertOrder 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return insert_result;
	}
	
	/**
	 * 고객이 주문확인 클릭 시 보여줄 jsp와 주문 목록을 보여주는 메소드
	 * 가상주소 /order_cus_check_form.onm로 접근하면 호출
	 * @param c_no : 고객번호
	 * @return mav : /order_cus_check_form.onm에 맵핑되는 jsp 파일과 가게 목록
	 */
	@RequestMapping(value="/order_cus_check_form.onm")
	public ModelAndView goOrderCustomCheckForm(
			@RequestParam(value="c_no") int c_no) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_cus_check_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goOrderCustomCheckForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	/**
	 * 고객이 주문확인에서 주문 선택 시 보여줄 jsp와 주문 정보를 보여주는 메소드
	 * 가상주소 /order_cus_check_detail_form.onm로 접근하면 호출
	 * @param o_no : 주문번호
	 * @return mav : /order_cus_check_detail_form.onm에 맵핑되는 jsp 파일과 가게 메뉴 목록
	 */
	@RequestMapping(value="/order_cus_check_detail_form.onm")
	public ModelAndView goOrderCustomCheckDetailForm(
			@RequestParam(value="o_no") int o_no) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_cus_check_detail_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goOrderCustomCheckDetailForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 고객이 메뉴를 취소 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /order_cus_cancel.onm로 접근하면 호출
	 * @param o_no : 주문번호
	 * @return delete_result : 주문 취소 Query 실행 결과
	 */
	@RequestMapping(value="/order_cus_cancel.onm")
	@ResponseBody
	public int deleteOrder(
			@RequestParam(value="o_no") int o_no) {
		int delete_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<deleteOrder 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return delete_result;
	}
}