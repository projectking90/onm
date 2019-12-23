/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import system.onm.dto.IngredientDTO;
import system.onm.dto.IngredientSearchDTO;
import system.onm.dto.MenuDTO;
import system.onm.dto.MenuSearchDTO;
import system.onm.dto.StoreKindDTO;
import system.onm.dto.StoreKindSearchDTO;
import system.onm.service.StoreService;

/**
 * StoreController 클래스
 * 가게 관련 가상 URL 주소로 접속하면 호출되는 메소드를 소유한 컨트롤러 클래스
 * @author Jo
 */
@Controller
public class StoreController {
	/**
	 * 속성변수 선언
	 */
	private final String path = "/Store/";	// jsp 경로
	@Autowired
	private StoreService store_service;	// StoreService 인터페이스를 구현받은 객체를 생성해서 저장

	/**
	 * 메소드 선언
	 */
	/**
	 * 가게 메뉴 화면 클릭 시 보여줄 jsp와 가게에 등록된 메뉴를 보여주는 메소드
	 * 가상주소 /store_menu.onm로 접근하면 호출
	 * @param menu_searchDTO : 메뉴 검색을 위해 사용하는 DTO
	 * @return mav : /store_menu.onm에 맵핑되는 jsp 파일과 가게 메뉴 리스트
	 */
	@RequestMapping(value="/store_menu.onm")
	public ModelAndView goStoreMenuForm(
			MenuSearchDTO menu_searchDTO) {
		/**
		 * menu_form.jsp에 넘겨줄 데이터
		 * menuList : 가게에 등록된 메뉴들
		 * s_no : 가게 번호
		 */
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/Store/menu_form.jsp");
		/* mav.setViewName(path + "menu_detail_form.jsp"); */
		try {
			
			List<MenuDTO> menu_list = this.store_service.getMenuList(menu_searchDTO);
			mav.addObject("menu_list", menu_list);
			
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goStoreMenuForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}
	
	@RequestMapping(value="/store_menucontent.onm")
	public ModelAndView goStoreMenuUpdelForm(
			@RequestParam(value="m_no") int m_no
			) {
		/**
		 * menu_form.jsp에 넘겨줄 데이터
		 * menuList : 가게에 등록된 메뉴들
		 * s_no : 가게 번호
		 */
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/Store/menu_content_form.jsp");
		try {
			MenuDTO menuDTO = this.store_service.getMenuDTO(m_no);
			mav.addObject("menuDTO", menuDTO);
			
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goStoreMenuForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 가게 메뉴 추가 기능 실행 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /store_menu_insert.onm로 접근하면 호출
	 * @param menuDTO : 메뉴 추가를 위해 사용하는 DTO
	 * @return insert_result : 메뉴 추가 Query 실행 결과
	 */
	@RequestMapping(value="/store_menu_insert.onm")
	@ResponseBody
	public ModelAndView insertStoreMenu(
			MenuDTO menuDTO) {
		int insert_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장


		ModelAndView mav = new ModelAndView();
		mav.setViewName("/Store/menu_form.jsp");
		
		try {
			
			
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<insertStoreMenu 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	
	
	
	/**
	 * 가게 메뉴 수정 기능 실행 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /store_menu_update.onm로 접근하면 호출
	 * @param menuDTO : 메뉴 수정을 위해 사용하는 DTO
	 * @return update_result : 메뉴 수정 Query 실행 결과
	 */
	@RequestMapping(value="/store_menu_update.onm")
	@ResponseBody
	public ModelAndView updateStoreMenu(
			@RequestParam(value="m_no") int m_no
	) {
		// 데이터베이스에 Query 실행 후 결과를 저장
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/Store/menu_update_form.jsp");
		
		try {
			MenuDTO menuDTO = this.store_service.getMenuDTO(m_no);
			mav.addObject("menuDTO", menuDTO);
			
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<updateStoreMenu 에러발생>");
			System.out.println(e.getMessage());
		}
		return mav;
	}
	
	
	@RequestMapping(
				value="/store_menu_update_proc.onm"	
				, method=RequestMethod.POST	
				, produces="application/json;charset=UTF-8")
	@ResponseBody
	public int updateStoreMenuProc(
		MenuDTO menuDTO
	) {
		int update_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		System.out.print("updatecheck");
		try {
			 update_result = this.store_service.updateStoreMenu(menuDTO); 
			
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<updateStoreMenu 에러발생>");
			System.out.println(e.getMessage());
			update_result=-1;
		}
		
		return update_result;
	}


	

	/**
	 * 가게 메뉴 삭제 기능 실행 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /store_menu_delete.onm로 접근하면 호출
	 * @param menuDTO : 메뉴 삭제를 위해 사용하는 DTO
	 * @return delete_result : 메뉴 삭제 Query 실행 결과
	 */
	@RequestMapping(value="/store_menu_delete.onm")
	@ResponseBody
	public ModelAndView deleteStoreMenu(
			MenuDTO menuDTO
			,MenuSearchDTO menu_searchDTO
			,HttpServletResponse response) {
		int delete_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		ModelAndView mav = new ModelAndView();
		try {
			delete_result = this.store_service.deleteStoreMenu(menuDTO);
			System.out.print("del");
			
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<deleteStoreMenu 에러발생>");
			System.out.println(e.getMessage());
		}
		mav.setViewName("/Store/menu_form.jsp");

		List<MenuDTO> menu_list = this.store_service.getMenuList(menu_searchDTO);
		mav.addObject("menu_list", menu_list);
		
		return mav;
	}
	
	
	
	/**
	 * 가게 식자재 화면 클릭 시 보여줄 jsp와 가게에 등록된 식자재를 보여주는 메소드
	 * 가상주소 /store_ingredient.onm로 접근하면 호출
	 * @param ingredient_searchDTO : 식자재 검색을 위해 사용하는 DTO
	 * @return mav : /store_ingredient.onm에 맵핑되는 jsp 파일과 가게 식자재 리스트
	 */
	@RequestMapping(value="/store_ingredient.onm")
	public ModelAndView goStoreIngredientForm(
			IngredientSearchDTO ingredient_searchDTO) {
		/**
		 * ingredient_form.jsp에 넘겨줄 데이터
		 * ingredientList : 가게에 등록된 메뉴들
		 * s_no : 가게 번호
		 */
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "ingredient_form.jsp");
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goStoreIngredientForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 가게 식자재 추가 기능 실행 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /store_ingredient_insert.onm로 접근하면 호출
	 * @param ingredientDTO : 식자재 추가를 위해 사용하는 DTO
	 * @return insert_result : 식사재 추가 Query 실행 결과
	 */
	@RequestMapping(value="/store_ingredient_insert.onm")
	@ResponseBody
	public int insertStoreIngredient(
			IngredientDTO ingredientDTO) {
		int insert_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<insertStoreIngredient 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return insert_result;
	}

	/**
	 * 가게 식자재 수정 기능 실행 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /store_ingredient_update.onm로 접근하면 호출
	 * @param ingredientDTO : 식자재 수정을 위해 사용하는 DTO
	 * @return update_result : 식자재 수정 Query 실행 결과
	 */
	@RequestMapping(value="/store_ingredient_update.onm")
	@ResponseBody
	public int updateStoreIngredient(
			IngredientDTO ingredientDTO) {
		int update_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<updateStoreIngredient 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return update_result;
	}

	/**
	 * 가게 식자재 삭제 기능 실행 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /store_ingredient_delete.onm로 접근하면 호출
	 * @param ingredientDTO : 식자재 삭제를 위해 사용하는 DTO
	 * @return delete_result : 식자재 삭제 Query 실행 결과
	 */
	@RequestMapping(value="/store_ingredient_delete.onm")
	@ResponseBody
	public int deleteStoreIngredient(
			IngredientDTO ingredientDTO) {
		int delete_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<deleteStoreIngredient 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return delete_result;
	}
	
	/**
	 * 가게 업종 화면 클릭 시 보여줄 jsp와 등록된 가게 업종을 보여주는 메소드
	 * 가상주소 /store_kind.onm로 접근하면 호출
	 * @param store_kind_searchDTO : 가게 업종 검색을 위해 사용하는 DTO
	 * @return mav : /store_kind.onm에 맵핑되는 jsp 파일과 가게 업종 정보
	 */
	@RequestMapping(value="/store_kind.onm")
	@ResponseBody
	public ModelAndView goStoreKindForm(
			StoreKindSearchDTO store_kind_searchDTO) {
		/**
		 * store_kind_form.jsp에 넘겨줄 데이터
		 * store_kind_list : 가게에 등록된 업종 정보
		 * s_no : 가게 번호
		 */
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path + "store_kind_form.jsp");
		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<goStoreKindForm 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return mav;
	}

	/**
	 * 가게 업종 추가 기능 실행 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /store_kind_insert.onm로 접근하면 호출
	 * @param store_kindDTO : 업종 추가를 위해 사용하는 DTO
	 * @return insert_result : 업종 추가 Query 실행 결과
	 */
	@RequestMapping(value="/store_kind_insert.onm")
	@ResponseBody
	public int insertStoreKind(
			StoreKindDTO store_kindDTO) {
		int insert_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<insertStoreKind 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return insert_result;
	}

	/**
	 * 가게 업종 수정 기능 실행 시 데이터베이스와 연동 처리할 메소드
	 * 가상주소 /store_kind_update.onm로 접근하면 호출
	 * @param store_kindDTO : 업종 수정을 위해 사용하는 DTO
	 * @return update_result : 업종 수정 Query 실행 결과
	 */
	@RequestMapping(value="/store_kind_update.onm")
	@ResponseBody
	public int updateStoreKind(
			StoreKindDTO store_kindDTO) {
		int update_result = 0;	// 데이터베이스에 Query 실행 후 결과를 저장

		try {
		} catch(Exception e) {	// try 구문에서 예외가 발생하면 실행할 구문 설정
			System.out.println("<updateStoreIngredient 에러발생>");
			System.out.println(e.getMessage());
		}
		
		return update_result;
	}
}