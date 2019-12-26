/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dao;

import java.util.List;

import system.onm.dto.StockDTO;
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
	StockDTO getStockDetail(int st_no);	// 가게 재고의 정보를 보여줌
	int insertStock(StockDTO stockDTO);	// 가게의 재고를 추가
	int updateStock(StockDTO stockDTO);	// 가게의 재고를 수정
	int deleteStock(int st_no);	// 가게의 재고를 삭제
}