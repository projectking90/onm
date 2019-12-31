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
import system.onm.dto.StockDTO;
import system.onm.dto.StockDetailDTO;
import system.onm.dto.StockSearchDTO;

/**
 * StockDAOImpl 클래스
 * DAO 클래스, bean 태그로 자동 등록됨
 * @author Jo
 */
@Repository
public class StockDAOImpl implements StockDAO {
	/**
	 * 속성변수 선언
	 */
	@Autowired
	private SqlSessionTemplate sqlSession;	// SqlSessionTemplate 객체를 생성하고 저장

	/**
	 * 메소드 선언
	 */
	/**
	 * 가게의 재고 목록을 보여줌
	 * @param stock_searchDTO : 재고 검색을 위해 사용하는 DTO
	 * @return getStockList : 재고 목록
	 */
	@Override
	public List<StockDTO> getStockList(StockSearchDTO stock_searchDTO) {
		List<StockDTO> stock_list = this.sqlSession.selectList(
				sqlSessionPath+"getStockList"
				, stock_searchDTO
		);
		
		return stock_list;
	}
	
	@Override
	public int getStockDetailListAllCnt(String i_name) {
		int stock_detail_list_cnt = this.sqlSession.selectOne(
				sqlSessionPath+"getStockDetailListAllCnt"
				,i_name
		);
		return stock_detail_list_cnt;
	}
	@Override
	public int getStockListAllCnt(StockSearchDTO stock_searchDTO) {
		//System.out.println(stock_searchDTO.getS_id());
		int stock_list_all_cnt=this.sqlSession.selectOne(
				sqlSessionPath+"getStockListAllCnt"
				,stock_searchDTO
		);
		return stock_list_all_cnt;
	}

	/**
	 * 가게 재고의 정보를 보여줌
	 * @param st_no : 재고번호
	 * @return getStockDetail : 재고 정보
	 */
	@Override
	public StockDTO getStockDetail(String i_name) {
		StockDTO stock_detail = this.sqlSession.selectOne(
				sqlSessionPath+"getStockDetail"
				,i_name
		);
		
		return stock_detail;
	}

	/**
	 * 가게 재고 정보를 볼때 출,입고 목록을 보여줌
	 * @param st_no : 재고번호
	 * @return getStockDetailList : 재고의 출, 입고 목록
	 */
	@Override
	public List<StockDTO> getStockDetailList(String i_name) {
		List<StockDTO> stock_detail_list = this.sqlSession.selectList(
				sqlSessionPath+"getStockDetailList"
				,i_name
		);
		
		return stock_detail_list;
	}

	/**
	 * 가게의 재고를 추가
	 * @param stockDTO : 재고 추가에 사용할 DTO
	 * @return insertStock : 재고 추가 Query 결과
	 */
	@Override
	public int insertStock(StockDTO stockDTO) {
		
		int insert_stock = sqlSession.insert(
				sqlSessionPath+"insertStock",
				stockDTO
				);
		return insert_stock;
	}

	/**
	 * 식자재 목록을 가져옴
	 * @param s_id : 가게 아이디
	 * @return
	 */
	@Override
	public List<IngredientDTO> getIngredientList(String s_id) {
		List<IngredientDTO> ingredient_list = this.sqlSession.selectList(
				sqlSessionPath+"getIngredientList"
				,s_id
		);
		return ingredient_list;
	}

	/**
	 * 가게의 재고를 수정
	 * @param stockDTO : 재고 수정에 사용할 DTO
	 * @return updateStock : 재고 수정 Query 결과
	 */
	@Override
	public int updateStock(StockDTO stockDTO) {
		int update_stock = 0;
		
		return update_stock;
	}

	/**
	 * 가게의 재고를 삭제
	 * @param st_no : 재고번호
	 * @return deleteStock : 재고 삭제 Query 결과
	 */
	@Override
	public int deleteStock(String i_name) {
		int delete_stock = this.sqlSession.insert(
				sqlSessionPath+"deleteStock"		
				,i_name
		);
		
		return delete_stock;
	}

	/**
	 * 재고 출고, 수정, 삭제 시 재고 수량 확인
	 * @param st_no : 재고번호
	 * @return check_stock_quantity : 재고의 수량
	 */
	@Override
	public int checkStockQuantity(int st_no) {
		int check_stock_quantity = 0;
		
		return check_stock_quantity;
	}
	
	@Override
	public int getStockCnt(StockDetailDTO stock_detailDTO) {
		int cnt = this.sqlSession.selectOne(
				sqlSessionPath+"getStockCnt"
				,stock_detailDTO
		);
		
		return cnt;
	}

	@Override
	public String getRecentSt_state(String i_name) {
		String recent_st_state=this.sqlSession.selectOne(
				sqlSessionPath+"getRecentSt_state"
				,i_name
		);
		
		return recent_st_state;
	}
}