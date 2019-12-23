/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import system.onm.dto.MenuSearchDTO;
import system.onm.service.AllService;

/**
 * AllController 클래스
 * 테스트 관련 가상 URL 주소로 접속하면 호출되는 메소드를 소유한 컨트롤러 클래스
 * @author Jo
 */
@Controller
public class AllController {
	/**
	 * 속성변수 선언
	 */
	private final String path = "All/";	// jsp 경로
	@Autowired
	private AllService all_service;	// AllService 인터페이스를 구현받은 객체를 생성해서 저장

	/**
	 * 메소드 선언
	 */
	/**
	 * 시작시 메인을 보여줄 jsp와 가게에 등록된 메뉴를 보여주는 메소드
	 * 가상주소 /start.onm로 접근하면 호출
	 * @return mav : /start.onm에 맵핑되는 jsp 파일과 가게 메뉴 리스트
	 */
	@RequestMapping(value="/start.onm")
	public ModelAndView goStartForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "start");
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goStartForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 고객 메인을 보여줄 jsp와 가게에 등록된 메뉴를 보여주는 메소드
	 * 가상주소 /cus.onm로 접근하면 호출
	 * @return mav : /cus.onm에 맵핑되는 jsp 파일과 가게 메뉴 리스트
	 */
	@RequestMapping(value="/cus.onm")
	public ModelAndView goCusForm(
			 @RequestParam(value="brunch") String brunch
			, HttpSession session
			) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "cus");
		session.setAttribute("s_id", brunch);
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goCusForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 기업 메인을 보여줄 jsp와 가게에 등록된 메뉴를 보여주는 메소드
	 * 가상주소 /com.onm로 접근하면 호출
	 * @return mav : /com.onm에 맵핑되는 jsp 파일과 가게 메뉴 리스트
	 */
	@RequestMapping(value="/com.onm")
	public ModelAndView goComForm(
			@RequestParam(value="brunch") String brunch
			, HttpSession session
			) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "com");
		session.setAttribute("s_id", brunch);
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goComForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
}