/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import system.onm.dto.CardDTO;
import system.onm.dto.OrderDTO;
import system.onm.dto.PointDTO;
import system.onm.dto.PointPresentDTO;
import system.onm.dto.PointSearchDTO;
import system.onm.service.PointService;

/**
 * PointController 클래스
 * 포인트 관련 가상 URL 주소로 접속하면 호출되는 메소드를 소유한 컨트롤러 클래스
 * @author Jo
 */
@Controller
public class PointController {
	/**
	 * 속성변수 선언
	 */
	private final String path = "Point/";	// jsp 경로
	@Autowired
	private PointService point_service;	// PointService 인터페이스를 구현받은 객체를 생성해서 저장

	/**
	 * 메소드 선언
	 */
	/**
	 * 사용자가 포인트 클릭 시 보여줄 jsp와 사용자의 포인트 기록 목록을 보여주는 메소드
	 * 가상주소 /point_record_form.onm로 접근하면 호출
	 * @param point_searchDTO : 검색 조건에 따라 포인트 목록을 보여주기 위해 사용하는 DTO
	 * @return mav : /point_record_form.onm에 맵핑되는 jsp 파일과 포인트 기록 목록
	 */
	@RequestMapping(value="/point_record_form.onm")
	public ModelAndView goPointRecordForm(
			PointSearchDTO point_searchDTO) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "point_record_form");
		
		try {
			List<PointDTO> point_list = this.point_service.getPointList(point_searchDTO);
			
			mav.addObject("point_list", point_list);
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goPointRecordForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 사용자가 포인트 선물 시 보여줄 jsp와 사용자의 포인트 정보를 보여주는 메소드
	 * 가상주소 /point_present_form.onm로 접근하면 호출
	 * @param s_id : 사용자 아이디
	 * @return mav : /point_present_form.onm에 맵핑되는 jsp 파일과 사용자의 포인트 정보
	 */
	@RequestMapping(value="/point_present_form.onm")
	public ModelAndView goPointPresentForm(
			@RequestParam(value="s_id") String s_id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "point_present_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goPointPresentForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 사용자가 포인트 선물 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /point_present.onm로 접근하면 호출
	 * @param point_presentDTO : 포인트 선물을 하기 위해 사용하는 DTO
	 * @return update_result : 포인트 선물 Query 실행 결과
	 */
	@RequestMapping(value="/point_present.onm")
	@ResponseBody
	public int updatePointPresent(
			PointPresentDTO point_presentDTO) {
		int update_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
			update_result = this.point_service.updatePointPresent(point_presentDTO);
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<updatePointPresent 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return update_result;
	}

	/**
	 * 사용자가 포인트 전환 시 보여줄 jsp와 사용자의 포인트 정보를 보여주는 메소드
	 * 가상주소 /point_to_cash_form.onm로 접근하면 호출
	 * @param s_id : 사용자 아이디
	 * @return mav : /point_to_cash_form.onm에 맵핑되는 jsp 파일과 사용자의 포인트 정보
	 */
	@RequestMapping(value="/point_to_cash_form.onm")
	public ModelAndView goPointToCashForm(
			@RequestParam(value="s_id") String s_id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "point_to_cash_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goPointToCashForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 사용자가 포인트 전환 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /point_to_cash.onm로 접근하면 호출
	 * @param point_presentDTO : 포인트 전환을 하기 위해 사용하는 DTO
	 * @return update_result : 포인트 전환 Query 실행 결과
	 */
	@RequestMapping(value="/point_to_cash.onm")
	@ResponseBody
	public int updatePointToCash(
			PointDTO pointDTO) {
		int update_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
			update_result = this.point_service.updatePointToCash(pointDTO);
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<updatePointToCash 에러발생>");
			System.out.println(e.getMessage());
			update_result=-1;
		}
		
		return update_result;
	}

	/**
	 * 사용자가 포인트 충전 시 보여줄 jsp
	 * 가상주소 /point_charge_form.onm로 접근하면 호출
	 * @return mav : /point_charge_form.onm에 맵핑되는 jsp 파일
	 */
	@RequestMapping(value="/point_charge_form.onm")
	public ModelAndView goPointChargeForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "point_charge_form");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goPointChargeForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 사용자가 포인트 충전 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /point_charge.onm로 접근하면 호출
	 * @param cardDTO : 포인트 충전을 하기 위해 사용하는 DTO
	 * @return insert_result : 포인트 충전 Query 실행 결과
	 */
	@RequestMapping(value="/point_charge.onm")
	@ResponseBody
	public int insertPointCharge(
			PointDTO pointDTO) {
		int insert_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
			insert_result = this.point_service.insertPointCharge(pointDTO);
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<insertPointCharge 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return insert_result;
	}
}