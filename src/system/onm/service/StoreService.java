/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.service;

import java.util.List;

import system.onm.dto.IngredientDTO;
import system.onm.dto.IngredientSearchDTO;
import system.onm.dto.MenuDTO;
import system.onm.dto.MenuSearchDTO;
import system.onm.dto.StoreKindDTO;
import system.onm.dto.StoreKindSearchDTO;

/**
 * StoreService 인터페이스
 * 서비스 클래스를 사용하기 위해 정의한 인터페이스
 * @author Jo
 */
public interface StoreService {
	/**
	 * 메소드 선언
	 */
	List<MenuDTO> getMenuList(MenuSearchDTO menu_searchDTO);	// 가게에 등록된 메뉴를 가져옴
	int insertStoreMenu(MenuDTO menuDTO);	// 가게 메뉴 추가
	int updateStoreMenu(MenuDTO menuDTO);	// 가게 메뉴 수정
	int deleteStoreMenu(MenuDTO menuDTO);	// 가게 메뉴 삭제
	List<IngredientDTO> getIngredientList(IngredientSearchDTO ingredient_searchDTO);	// 가게에 등록된 식자재를 가져옴
	int insertStoreIngredient(IngredientDTO ingredientDTO);	// 가게 식자재 추가
	IngredientDTO getIngredientDetail(int i_no);			// 가게 식자재 상세정보
	int updateStoreIngredient(IngredientDTO ingredientDTO);	// 가게 식자재 수정
	int deleteStoreIngredient(IngredientDTO ingredientDTO);	// 가게 식자재 삭제
	List<StoreKindDTO> getStoreKindList(StoreKindSearchDTO store_kind_searchDTO);	// 가게 업종 정보를 가져옴
	int insertStoreKind(StoreKindDTO store_kindDTO);	// 가게 업종 정보 추가
	int updateStoreKind(StoreKindDTO store_kindDTO);	// 가게 업종 정보 수정
}