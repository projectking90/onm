/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import system.onm.dto.AddrCityDTO;
import system.onm.dto.AddrDTO;
import system.onm.dto.AddrDongDTO;
import system.onm.dto.AddrGuDTO;
import system.onm.dto.MenuSearchDTO;
import system.onm.dto.MenuTrackingDTO;
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
			AddrDTO addr = new AddrDTO();
			addr.setCityList(this.all_service.getAddrCity());
			
			mav.addObject("addr", addr);
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goStartForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	/**
	 * 시 선택시 해당하는 시의 구를 가져올 메소드
	 * @param city : 선택한 시
	 * @return gu : 선택한 시의 구
	 */
	@RequestMapping(value="/get_gu.onm")
	@ResponseBody
	public List<AddrGuDTO> getGu(
			@RequestParam(value="city") String city) {
		List<AddrGuDTO> gu = null;
		
		try {
			gu = this.all_service.getAddrGu(city);
			
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<getGu 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return gu;
	}
	
	/**
	 * 구 선택시 해당하는 구의 동을 가져올 메소드
	 * @param gu : 선택한 구
	 * @return dong : 선택한 구의 동
	 */
	@RequestMapping(value="/get_dong.onm")
	@ResponseBody
	public List<AddrDongDTO> getDong(
			@RequestParam(value="gu") String gu) {
		List<AddrDongDTO> dong = null;
		
		try {
			dong = this.all_service.getAddrDong(gu);
			
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<getDong 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return dong;
	}

	/**
	 * 고객 메인을 보여줄 jsp와 가게에 등록된 메뉴를 보여주는 메소드
	 * 가상주소 /cus.onm로 접근하면 호출
	 * @return mav : /cus.onm에 맵핑되는 jsp 파일과 가게 메뉴 리스트
	 */
	@RequestMapping(value="/cus.onm")
	public ModelAndView goCusForm(
			 @RequestParam(value="l_id") String l_id
			, HttpSession session
			) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "cus");
		session.setAttribute("c_id", l_id);
		session.setAttribute("user_flag", "c");
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
			 @RequestParam(value="l_id") String l_id
			, HttpSession session
			) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "com");
		session.setAttribute("s_id", l_id);
		session.setAttribute("user_flag", "s");
		
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goComForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	/**
	 * 메뉴 트래킹 정보를 가져올 메소드
	 * @param path : 경로
	 * @param user_flag : 유저 구분
	 * @return menu_tracking_list : 메뉴 트래킹 정보
	 */
	@RequestMapping(value="/get_menu_tracking.onm")
	@ResponseBody
	public List<MenuTrackingDTO> getMenuTracking(
			@RequestParam(value="path") String path
			, @RequestParam(value="user_flag") String user_flag) {
		List<MenuTrackingDTO> menu_tracking_list = null;
		
		Map<String, String> path_user_flag = new HashMap<String, String>();
		path_user_flag.put("path", path);
		path_user_flag.put("user_flag", user_flag);
		
		try {
			menu_tracking_list = this.all_service.getMenuTracking(path_user_flag);
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<getMenuTracking 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return menu_tracking_list;
	}
}