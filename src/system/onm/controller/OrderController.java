/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import system.onm.dto.MenuDTO;
import system.onm.dto.OrderDTO;
import system.onm.dto.OrderSearchDTO;
import system.onm.dto.StoreDTO;
import system.onm.dto.OrderRecommendSearchDTO;
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
			StoreSearchDTO store_searchDTO
			,HttpSession session
			,HttpServletRequest request
			) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_cus_form");
		
		try {
			String c_id = (String)session.getAttribute("c_id");
			store_searchDTO.setC_id(c_id);
			System.out.println( "main=>"+c_id );

			List<StoreDTO> getStoreList = this.order_service.getStoreList(store_searchDTO);
			mav.addObject("getStoreList", getStoreList);
			mav.addObject("store_searchDTO", store_searchDTO);
			System.out.println( getStoreList.size() );
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
			@RequestParam(value="s_no") int s_no
			,HttpSession session
			,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_cus_detail_form");
		String c_id = (String)session.getAttribute("c_id");
		System.out.println( "detail=>"+c_id );
		mav.addObject("c_id", c_id);
		
		
		try {
			List<MenuDTO> getMenuList = this.order_service.getMenuList(s_no);
			mav.addObject("getMenuList", getMenuList);
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
	@RequestMapping(value="/order_cus.onm"
			, method=RequestMethod.POST	
			, produces="application/json;charset=UTF-8"			
			)
	@ResponseBody
	public int insertOrder(
			OrderDTO orderDTO
			,HttpSession session) {
		int insert_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장
		String c_id = (String)session.getAttribute("c_id");
		

		try {
			/* List<OrderDTO> list = */
			insert_result = this.order_service.insertOrder(orderDTO);
			System.out.print("insert");
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
			@RequestParam(value="c_id") String c_id
			,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_cus_check_form");
		
		try {
			List<OrderDTO> getOrderList = this.order_service.getOrderList(c_id);
			mav.addObject("getOrderList", getOrderList);
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
			OrderDTO getOrderDetail = this.order_service.getOrderDetail(o_no);
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
	
	/**
	 * 고객이 추천 주문 클릭 시 보여줄 jsp와 추천 주문 정보를 보여주는 메소드
	 * 가상주소 /order_cus_recommend_form.onm로 접근하면 호출
	 * @param o_no : 주문번호
	 * @return mav : /order_cus_recommend_form.onm에 맵핑되는 jsp 파일과 가게 메뉴 목록
	 */
	@RequestMapping(value="/order_cus_recommend_form.onm")
	public ModelAndView goOrderCustomRecommendForm(
			OrderRecommendSearchDTO order_recommend_searchDTO) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_cus_recommend_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goOrderCustomRecommendForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	/**
	 * 가게가 주문 확인 - 접수대기 클릭 시 보여줄 jsp와 가게에 들어온 주문 정보를 보여주는 메소드
	 * 가상주소 /order_store_wait_form.onm로 접근하면 호출
	 * @param s_id : 가게 아이디
	 * @return mav : /order_store_wait_form.onm에 맵핑되는 jsp 파일과 가게 주문 목록
	 */
	@RequestMapping(value="/order_store_wait_form.onm")
	public ModelAndView goOrderStoreWaitForm(
			@RequestParam(value="s_id") String s_id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_store_wait_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goOrderStoreWaitForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	/**
	 * 가게가 주문 확인에서 주문 선택 시 보여줄 jsp와 주문의 상세 정보를 보여주는 메소드
	 * 가상주소 /order_store_detail_form.onm로 접근하면 호출
	 * @param o_no : 주문 번호
	 * @return mav : /order_store_detail_form.onm에 맵핑되는 jsp 파일과 주문 상세 정보
	 */
	@RequestMapping(value="/order_store_detail_form.onm")
	public ModelAndView goOrderStoreDetailForm(
			@RequestParam(value="o_no") int o_no) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_store_detail_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goOrderStoreDetailForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	/**
	 * 가게가 주문 확인 - 처리중 클릭 시 보여줄 jsp와 주문 중 처리중인 주문을 보여주는 메소드
	 * 가상주소 /order_store_proc_form.onm로 접근하면 호출
	 * @param s_id : 가게 아이디
	 * @return mav : /order_store_proc_form.onm에 맵핑되는 jsp 파일과 처리 중인 주문 목록
	 */
	@RequestMapping(value="/order_store_proc_form.onm")
	public ModelAndView goOrderStoreProcForm(
			@RequestParam(value="s_id") String s_id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_store_proc_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goOrderStoreProcForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	/**
	 * 가게가 주문 확인 - 완료 클릭 시 보여줄 jsp와 주문 중 완료된 주문을 보여주는 메소드
	 * 가상주소 /order_store_done_form.onm로 접근하면 호출
	 * @param s_id : 가게 아이디
	 * @return mav : /order_store_done_form.onm에 맵핑되는 jsp 파일과 완료된 주문 목록
	 */
	@RequestMapping(value="/order_store_done_form.onm")
	public ModelAndView goOrderStoreDoneForm(
			@RequestParam(value="s_id") String s_id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "order_store_done_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goOrderStoreDoneForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	/**
	 * 주문의 상태를 변경 할 경우 변경 가능한 상태인지 확인
	 * 가상주소 /order_check_state.onm로 접근하면 호출
	 * @param o_no : 주문 번호
	 * @return checkOrderState : 주문의 상태
	 */
	@RequestMapping(value="/order_check_state.onm")
	@ResponseBody
	public String checkOrderState(
			@RequestParam(value="o_no") int o_no) {
		String checkOrderState = "";
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<checkOrderState 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return checkOrderState;
	}
	
	/**
	 * 가게가 주문의 상태를 변경
	 * 가상주소 /order_store_confirm.onm로 접근하면 호출
	 * @param o_no : 주문 번호
	 * @param flag : 처리 중을 뜻하는 flag값(p)
	 * @return updateOrderProc : 주문 처리 중 Query 실행 후 결과
	 */
	@RequestMapping(value="/order_store_confirm.onm")
	@ResponseBody
	public int updateOrderProc(
			@RequestParam(value="o_no") int o_no
			, @RequestParam(value="flag") String flag) {
		int updateOrderProc = 0;
		/**
		 * 매개변수 hashmap에 담아서 넘길것
		 */
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<updateOrderProc 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return updateOrderProc;
	}
	
	/**
	 * 가게가 주문 확인 - 접수대기에서 거부 클릭 시 주문 취소로 변경
	 * 가상주소 /order_store_reject.onm로 접근하면 호출
	 * @param o_no : 주문 번호
	 * @return updateOrderReject : 주문 거부 Query 실행 후 결과
	 */
	@RequestMapping(value="/order_store_reject.onm")
	@ResponseBody
	public int updateOrderReject(
			@RequestParam(value="o_no") int o_no) {
		int updateOrderReject = 0;
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<updateOrderReject 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return updateOrderReject;
	}
}