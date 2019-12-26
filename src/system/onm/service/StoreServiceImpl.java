/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import system.onm.dao.StoreDAO;
import system.onm.dto.IngredientDTO;
import system.onm.dto.IngredientSearchDTO;
import system.onm.dto.MenuDTO;
import system.onm.dto.MenuSearchDTO;
import system.onm.dto.StoreKindDTO;
import system.onm.dto.StoreKindSearchDTO;

/**
 * StoreServiceImpl 클래스
 * 서비스 클래스
 * @author Jo
 */
@Repository
@Service
@Transactional
public class StoreServiceImpl implements StoreService {
	/**
	 * 속성변수 선언
	 */
	@Autowired
	private StoreDAO storeDAO;	// StoreDAO 인터페이스를 구현받은 객체를 생성해서 저장

	/**
	 * 메소드 선언
	 */
	/**
	 * 가게에 등록된 메뉴를 가져옴
	 * @param menu_searchDTO : 메뉴 검색을 위해 사용하는 DTO
	 * @return menu_list : 검색된 메뉴 정보
	 */
	@Override
	public List<MenuDTO> getMenuList(MenuSearchDTO menu_searchDTO) {
		List<MenuDTO> menu_list = null;
		
		return menu_list;
	}

	/**
	 * 가게 메뉴 추가
	 * @param menuDTO : 메뉴 추가를 위해 사용하는 DTO
	 * @return insert_result : 메뉴 추가 적용 개수
	 */
	@Override
	public int insertStoreMenu(MenuDTO menuDTO) {
		int insert_result = 0;
		
		return insert_result;
	}

	/**
	 * 가게 메뉴 수정
	 * @param menuDTO : 메뉴 추가를 위해 사용하는 DTO
	 * @return update_result : 메뉴 수정 적용 개수
	 */
	@Override
	public int updateStoreMenu(MenuDTO menuDTO) {
		int update_result = 0;
		
		return update_result;
	}

	/**
	 * 가게 메뉴 삭제
	 * @param menuDTO : 메뉴 추가를 위해 사용하는 DTO
	 * @return delete_result : 메뉴 삭제 적용 개수
	 */
	@Override
	public int deleteStoreMenu(MenuDTO menuDTO) {
		int delete_result = 0;
		
		return delete_result;
	}

	/**
	 * 가게에 등록된 식자재를 가져옴
	 * @param ingredient_searchDTO : 식자재 검색을 위해 사용하는 DTO
	 * @return ingredient_list : 검색된 식자재 정보
	 */
	@Override
	public List<IngredientDTO> getIngredientList(IngredientSearchDTO ingredient_searchDTO) {
		List<IngredientDTO> ingredient_list = this.storeDAO.getIngredientList(ingredient_searchDTO);
		
		//System.out.println(ingredient_searchDTO.getSelectPageNo());
		return ingredient_list;
	}
	

	/*
	 * 가게에 등록된 식자재의 상제정보 페이지
	 * @param : ingredient
	 */

	@Override
	public IngredientDTO getIngredientDetail(int i_no) {
		IngredientDTO ingredientDetail_list = this.storeDAO.getIngredientDetail(i_no);
		return ingredientDetail_list;
	}




	/**
	 * 가게 식자재 추가
	 * @param ingredientDTO : 식자재 추가를 위해 사용하는 DTO
	 * @return insert_result : 식자재 추가 적용 개수
	 */
	@Override
	public int insertStoreIngredient(IngredientDTO ingredientDTO) {
		int insert_result = 0;
		
		return insert_result;
	}

	/**
	 * 가게 식자재 수정
	 * @param ingredientDTO : 식자재 추가를 위해 사용하는 DTO
	 * @return update_result : 식자재 수정 적용 개수
	 */
	@Override
	public int updateStoreIngredient(IngredientDTO ingredientDTO) {
		int update_result = this.storeDAO.updateStoreIngredient(ingredientDTO);
		System.out.println(update_result);
		return update_result;
	}

	/**
	 * 가게 식자재 삭제
	 * @param ingredientDTO : 식자재 추가를 위해 사용하는 DTO
	 * @return delete_result : 식자재 삭제 적용 개수
	 */
	@Override
	public int deleteStoreIngredient(IngredientDTO ingredientDTO) {
		int delete_result = this.storeDAO.deleteStoreIngredient(ingredientDTO);
		System.out.println(delete_result);
		return delete_result;
	}

	/**
	 * 가게 업종 정보를 가져옴
	 * @param store_kind_searchDTO : 업종 정보 검색을 위해 사용하는 DTO
	 * @return store_kind_list : 검색된 업종 정보
	 */
	@Override
	public List<StoreKindDTO> getStoreKindList(StoreKindSearchDTO store_kind_searchDTO) {
		List<StoreKindDTO> store_kind_list = null;
		
		return store_kind_list;
	}

	/**
	 * 가게 업종 정보 추가
	 * @param store_kindDTO : 업종 추가를 위해 사용하는 DTO
	 * @return insert_result : 업종 추가 적용 개수
	 */
	@Override
	public int insertStoreKind(StoreKindDTO store_kindDTO) {
		int insert_result = 0;
		
		return insert_result;
	}

	/**
	 * 가게 업종 정보 수정
	 * @param store_kindDTO : 업종 수정을 위해 사용하는 DTO
	 * @return update_result : 업종 수정 적용 개수
	 */
	@Override
	public int updateStoreKind(StoreKindDTO store_kindDTO) {
		int update_result = 0;
		
		return update_result;
	}



}