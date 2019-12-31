/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dao;

import java.util.List;

import system.onm.dto.IngredientDTO;
import system.onm.dto.StockDTO;
import system.onm.dto.StockDetailDTO;
import system.onm.dto.StockSearchDTO;

/**
 * StockDAO 인터페이스
 * DAO 클래스를 사용하기 위해 정의한 인터페이스
 * @author Jo
 */
public interface StockDAO {
	/**
	 * 속성변수 선언
	 */
	String sqlSessionPath = "system.onm.dao.StockDAO.";

	/**
	 * 메소드 선언
	 */
	List<StockDTO> getStockList(StockSearchDTO stock_searchDTO);	// 가게의 재고 목록을 보여줌
	int getStockListAllCnt(StockSearchDTO stock_searchDTO); // 가게의 재고 목록의 총 개수
	int getStockDetailListAllCnt(String i_name); // 가게 상세보기의 재고 목록 총 개수
	StockDTO getStockDetail(String i_name);	// 가게 재고의 정보를 보여줌
	List<StockDTO> getStockDetailList(String i_name);	// 가게 재고 정보를 볼때 출,입고 목록을 보여줌
	int insertStock(StockDTO stockDTO);	// 가게의 재고를 추가
	List<IngredientDTO> getIngredientList(String s_id);	// 식자재 목록을 가져옴
	int updateStock(StockDTO stockDTO);	// 가게의 재고를 수정
	int deleteStock(String i_name);	// 가게의 재고를 삭제
	int checkStockQuantity(int st_no);	//	재고 출고, 수정, 삭제 시 재고 수량 확인
	int getStockCnt(StockDetailDTO stock_detailDTO);
	String getRecentSt_state(String i_name);
}