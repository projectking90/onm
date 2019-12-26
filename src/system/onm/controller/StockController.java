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

import system.onm.dto.StockDTO;
import system.onm.dto.StockSearchDTO;
import system.onm.service.StockService;

/**
 * StockController 클래스
 * 재고 관련 가상 URL 주소로 접속하면 호출되는 메소드를 소유한 컨트롤러 클래스
 * @author Jo
 */
@Controller
public class StockController {
	/**
	 * 속성변수 선언
	 */
	private final String path = "Stock/";	// jsp 경로
	@Autowired
	private StockService stock_service;	// StockService 인터페이스를 구현받은 객체를 생성해서 저장

	/**
	 * 메소드 선언
	 */
	/**
	 * 가게가 재고관리 검색 클릭 시 보여줄 jsp와 등록된 가게의 재고를 보여주는 메소드
	 * 가상주소 /stock_form.onm로 접근하면 호출
	 * @param stock_searchDTO : 가게의 재고를 보여주기 위해 사용하는 DTO
	 * @return mav : /stock_form.onm에 맵핑되는 jsp 파일과 가게 목록
	 */
	@RequestMapping(value="/stock_form.onm")
	public ModelAndView goStockForm(
			StockSearchDTO stock_searchDTO) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "stock_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goStockForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	/**
	 * 가게가 상세보기하려는 재고 선택 시 보여줄 jsp와 선택한 재고의 정보를 메소드
	 * 가상주소 /stock_detail_form.onm로 접근하면 호출
	 * @param st_no : 재고번호
	 * @return mav : /stock_detail_form.onm에 맵핑되는 jsp와 선택한 재고의 정보
	 */
	@RequestMapping(value="/stock_detail_form.onm")
	public ModelAndView goStockDetailForm(
			@RequestParam(value="st_no") int st_no) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "stock_detail_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goStockDetailForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	/**
	 * 가게가 재고관리 추가 클릭 시 보여줄 jsp를 보여주는 메소드
	 * 가상주소 /stock_insert_form.onm로 접근하면 호출
	 * @param s_no : 가게번호
	 * @return mav : /stock_insert_form.onm에 맵핑되는 jsp
	 */
	@RequestMapping(value="/stock_insert_form.onm")
	public ModelAndView goStockInsertForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "stock_insert_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goStockInsertForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 가게가 재고관리 추가 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /stock_insert.onm로 접근하면 호출
	 * @param stockDTO : 재고 추라를 하기 위해 사용하는 DTO
	 * @return insert_result : 재고관리 추가 Query 실행 결과
	 */
	@RequestMapping(value="/stock_insert.onm")
	@ResponseBody
	public int insertStock(
			StockDTO stockDTO) {
		int insert_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<insertStock 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return insert_result;
	}
	
	/**
	 * 가게가 재고관리 수정/삭제 클릭 시 보여줄 jsp를 보여주는 메소드
	 * 가상주소 /stock_insert_form.onm로 접근하면 호출
	 * @param st_no : 재고번호
	 * @return mav : /stock_insert_form.onm에 맵핑되는 jsp
	 */
	@RequestMapping(value="/stock_updel_form.onm")
	public ModelAndView goStockUpdelForm(
			@RequestParam(value="st_no") int st_no) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "stock_updel_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goStockUpdelForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 가게 재고 수정 기능 실행 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /stock_update.onm로 접근하면 호출
	 * @param stockDTO : 재고 수정을 위해 사용하는 DTO
	 * @return update_result : 재고 수정 Query 실행 결과
	 */
	@RequestMapping(value="/stock_update.onm")
	@ResponseBody
	public int updateStock(
			StockDTO stockDTO) {
		int update_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<updateStock 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return update_result;
	}

	/**
	 * 가게 재고 삭제 기능 실행 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /stock_delete.onm로 접근하면 호출
	 * @param st_no : 재고번호
	 * @return delete_result : 메뉴 삭제 Query 실행 결과
	 */
	@RequestMapping(value="/stock_delete.onm")
	@ResponseBody
	public int deleteStock(
			@RequestParam(value="st_no") int st_no) {
		int delete_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<deleteStock 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return delete_result;
	}
}