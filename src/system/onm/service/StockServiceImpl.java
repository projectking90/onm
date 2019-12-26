/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import system.onm.dao.StockDAO;
import system.onm.dto.StockDTO;
import system.onm.dto.StockSearchDTO;

/**
 * StockServiceImpl 클래스
 * 서비스 클래스
 * @author Jo
 */
@Service
@Transactional
public class StockServiceImpl implements StockService {
	/**
	 * 속성변수 선언
	 */
	@Autowired
	private StockDAO stockDAO;	// StockDAO 인터페이스를 구현받은 객체를 생성해서 저장

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
		List<StockDTO> getStockList = null;
		
		return getStockList;
	}

	/**
	 * 가게 재고의 정보를 보여줌
	 * @param st_no : 재고번호
	 * @return getStockDetail : 재고 정보
	 */
	@Override
	public StockDTO getStockDetail(int st_no) {
		StockDTO getStockDetail = null;
		
		return getStockDetail;
	}

	/**
	 * 가게의 재고를 추가
	 * @param stockDTO : 재고 추가에 사용할 DTO
	 * @return insertStock : 재고 추가 Query 결과
	 */
	@Override
	public int insertStock(StockDTO stockDTO) {
		int insertStock = 0;
		
		return insertStock;
	}

	/**
	 * 가게의 재고를 수정
	 * @param stockDTO : 재고 수정에 사용할 DTO
	 * @return updateStock : 재고 수정 Query 결과
	 */
	@Override
	public int updateStock(StockDTO stockDTO) {
		int updateStock = 0;
		
		return updateStock;
	}

	/**
	 * 가게의 재고를 삭제
	 * @param st_no : 재고번호
	 * @return deleteStock : 재고 삭제 Query 결과
	 */
	@Override
	public int deleteStock(int st_no) {
		int deleteStock = 0;
		
		return deleteStock;
	}
}