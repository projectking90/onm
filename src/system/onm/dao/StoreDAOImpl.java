/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import system.onm.dto.IngredientDTO;
import system.onm.dto.IngredientSearchDTO;
import system.onm.dto.MenuDTO;
import system.onm.dto.MenuSearchDTO;
import system.onm.dto.StoreKindDTO;
import system.onm.dto.StoreKindSearchDTO;

/**
 * StoreDAOImpl 클래스
 * DAO 클래스, bean 태그로 자동 등록됨
 * @author Jo
 */
@Repository
public class StoreDAOImpl implements StoreDAO {
	/**
	 * 속성변수 선언
	 */
	@Autowired
	private SqlSessionTemplate sqlSession;	// SqlSessionTemplate 객체를 생성하고 저장

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
		List<MenuDTO> menu_list = this.sqlSession.selectList(
				"system.onm.dao.StoreDAO.getMenuList"
				, menu_searchDTO
	);
		/* System.out.println(menu_searchDTO.getS_no()); */
		return menu_list;
	}
	
	@Override
	public int getMenuListAllCnt(MenuSearchDTO menu_searchDTO) {
		int menu_list_all_cnt = this.sqlSession.selectOne(
				"system.onm.dao.StoreDAO.getMenuListAllCnt"
				, menu_searchDTO
		);
		return menu_list_all_cnt;	
	}

	/**
	 * 가게 메뉴 추가
	 * @param menuDTO : 메뉴 추가를 위해 사용하는 DTO
	 * @return insert_result : 메뉴 추가 적용 개수
	 */
	@Override
	public int insertStoreMenu(MenuDTO menuDTO) {
		int insert_result = sqlSession.insert(
				"system.onm.dao.StoreDAO.insertStoreMenu",
				menuDTO
		);
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
	public List<IngredientDTO> getMenuList(IngredientSearchDTO ingredient_searchDTO) {
		List<IngredientDTO> ingredient_list = null;
		
		return ingredient_list;
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
		int update_result = 0;
		
		return update_result;
	}

	/**
	 * 가게 식자재 삭제
	 * @param ingredientDTO : 식자재 추가를 위해 사용하는 DTO
	 * @return delete_result : 식자재 삭제 적용 개수
	 */
	@Override
	public int deleteStoreIngredient(IngredientDTO ingredientDTO) {
		int delete_result = 0;
		
		return delete_result;
	}

	/**
	 * 가게 업종 정보를 가져옴
	 * @param store_kind_searchDTO : 업종 정보 검색을 위해 사용하는 DTO
	 * @return store_kind_list : 검색된 업종 정보
	 */
	@Override
	public List<StoreKindDTO> getMenuList(StoreKindSearchDTO store_kind_searchDTO) {
		List<StoreKindDTO> store_kind_list = null;
		
		return store_kind_list;
	}

	/**
	 * 가게 업종 정보 추가
	 * @param store_kindDTO : 업종 추가를 위해 사용하는 DTO
	 * @return insert_result : 업종 추가 적용 개수
	 */
	@Override
	public int insertStoreMenu(StoreKindDTO store_kindDTO) {
		int insert_result = 0;
		
		return insert_result;
	}

	/**
	 * 가게 업종 정보 수정
	 * @param store_kindDTO : 업종 수정을 위해 사용하는 DTO
	 * @return update_result : 업종 수정 적용 개수
	 */
	@Override
	public int updateStoreMenu(StoreKindDTO store_kindDTO) {
		int update_result = 0;
		
		return update_result;
	}
}