/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dao;

import java.util.List;

import system.onm.dto.IngredientDTO;
import system.onm.dto.IngredientSearchDTO;
import system.onm.dto.MenuDTO;
import system.onm.dto.MenuSearchDTO;
import system.onm.dto.StoreKindDTO;
import system.onm.dto.StoreKindSearchDTO;

/**
 * StoreDAO 인터페이스
 * DAO 클래스를 사용하기 위해 정의한 인터페이스
 * @author Jo
 */
public interface StoreDAO {
	/**
	 * 속성변수 선언
	 */
	String sqlSessionPath = "system.onm.dao.StoreDAO.";

	/**
	 * 메소드 선언
	 */
	List<MenuDTO> getMenuList(MenuSearchDTO menu_searchDTO);	// 가게에 등록된 메뉴를 가져옴
	int getMenuListAllCnt(MenuSearchDTO menu_searchDTO); // 개수
	int insertStoreMenu(MenuDTO menuDTO);	// 가게 메뉴 추가
	int updateStoreMenu(MenuDTO menuDTO);	// 가게 메뉴 수정
	int deleteStoreMenu(MenuDTO menuDTO);	// 가게 메뉴 삭제
	List<IngredientDTO> getMenuList(IngredientSearchDTO ingredient_searchDTO);	// 가게에 등록된 식자재를 가져옴
	int insertStoreIngredient(IngredientDTO ingredientDTO);	// 가게 식자재 추가
	int updateStoreIngredient(IngredientDTO ingredientDTO);	// 가게 식자재 수정
	int deleteStoreIngredient(IngredientDTO ingredientDTO);	// 가게 식자재 삭제
	List<StoreKindDTO> getMenuList(StoreKindSearchDTO store_kind_searchDTO);	// 가게 업종 정보를 가져옴
	int insertStoreMenu(StoreKindDTO store_kindDTO);	// 가게 업종 정보 추가
	int updateStoreMenu(StoreKindDTO store_kindDTO);	// 가게 업종 정보 수정
}