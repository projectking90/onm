/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import system.onm.dto.MenuDTO;
import system.onm.dto.OrderDTO;
import system.onm.dto.OrderRecommendDTO;
import system.onm.dto.OrderRecommendSearchDTO;
import system.onm.dto.OrderRecordDTO;
import system.onm.dto.OrderRecordSearchDTO;
import system.onm.dto.StoreDTO;
import system.onm.dto.StoreSearchDTO;

/**
 * OrderDAOImpl 클래스
 * DAO 클래스, bean 태그로 자동 등록됨
 * @author Jo
 */
@Repository
public class OrderDAOImpl implements OrderDAO {
	/**
	 * 속성변수 선언
	 */
	@Autowired
	private SqlSessionTemplate sqlSession;	// SqlSessionTemplate 객체를 생성하고 저장

	/**
	 * 메소드 선언
	 */
	/**
	 * 가게 목록을 가져옴
	 * @param store_searchDTO : 가게 검색 조건 DTO
	 * @return getStoreList : 검색된 가게 목록
	 */
	@Override
	public List<StoreDTO> getStoreList(StoreSearchDTO store_searchDTO) {
		List<StoreDTO> getStoreList = null;
		
		return getStoreList;
	}

	/**
	 * 가게의 메뉴 목록를 가져옴
	 * @param s_no : 가게번호
	 * @return getMenuList : 가게 메뉴 목록
	 */
	@Override
	public List<MenuDTO> getMenuList(int s_no) {
		List<MenuDTO> getMenuList = null;
		
		return getMenuList;
	}

	/**
	 * 고객의 주문을 추가
	 * @param orderDTO : 주문 DTO
	 * @return insertOrder : 주문 추가 Query 결과
	 */
	@Override
	public int insertOrder(OrderDTO orderDTO) {
		int insertOrder = 0;
		
		return insertOrder;
	}

	/**
	 * 고객의 주문 목록를 가져옴
	 * @param c_no : 고객번호
	 * @return getOrderList : 고객의 주문 목록
	 */
	@Override
	public List<OrderDTO> getOrderList(int c_no) {
		List<OrderDTO> getOrderList = null;
		
		return getOrderList;
	}

	/**
	 * 주문정보를 가져옴
	 * @param o_no : 주문번호
	 * @return getOrderDetail : 주문정보
	 */
	@Override
	public OrderDTO getOrderDetail(int o_no) {
		OrderDTO getOrderDetail = null;
		
		return getOrderDetail;
	}

	/**
	 * 고객의 주문을 취소
	 * @param o_no : 주문번호
	 * @return deleteOrder : 주문 취소 Query 결과
	 */
	@Override
	public int deleteOrder(int o_no) {
		int deleteOrder = 0;
		
		return deleteOrder;
	}

	/**
	 * 주문 상태를 확인
	 * @param o_no : 주문번호
	 * @return checkOrderState : 주문의 상태
	 */
	@Override
	public String checkOrderState(int o_no) {
		String checkOrderState = "";
		
		return checkOrderState;
	}

	/**
	 *  추천 주문 목록을 가져옴
	 * @param order_recommend_searchDTO : 추천 주문을 검색하기 위해 사용하는 DTO
	 * @return goOrderCustomRecommendForm : 추천 주문 목록
	 */
	@Override
	public List<OrderRecommendDTO> getOrderRecommendList(OrderRecommendSearchDTO order_recommend_searchDTO) {
		List<OrderRecommendDTO> getOrderRecommendList = null;
		
		return getOrderRecommendList;
	}
	
	/**
	 * 가게의 접수대기 중인 주문 목록을 가져옴
	 * @param s_id : 가게 아이디
	 * @return getOrderWaitList : 접수대기 중인 주문 목록
	 */
	@Override
	public List<OrderDTO> getOrderWaitList(int s_id) {
		List<OrderDTO> getOrderWaitList = null;
		
		return getOrderWaitList;
	}

	/**
	 * 가게의 주문 상세정보를 가져옴
	 * @param o_no : 주문 번호
	 * @return getOrderStoreDetail : 주문 상세정보
	 */
	@Override
	public OrderDTO getOrderStoreDetail(int o_no) {
		OrderDTO getOrderStoreDetail = null;
		
		return getOrderStoreDetail;
	}

	/**
	 * 가게의 처리 중인 주문 목록을 가져옴
	 * @param s_id : 가게 아이디
	 * @return getOrderProcList : 처리 중인 주문 목록
	 */
	@Override
	public List<OrderDTO> getOrderProcList(int s_id) {
		List<OrderDTO> getOrderProcList = null;
		
		return getOrderProcList;
	}

	/**
	 * 가게의 완료된 주문 목록을 가져옴
	 * @param s_id : 가게 아이디
	 * @return getOrderDoneList : 완료된 주문 목록
	 */
	@Override
	public List<OrderDTO> getOrderDoneList(int s_id) {
		List<OrderDTO> getOrderDoneList = null;
		
		return getOrderDoneList;
	}

	/**
	 * 주문 상태를 변경
	 * @param o_no_flag : 주문번호, 변경할 상태
	 * @return updateOrderProc : 주문 상태 변경 Query 실행 결과
	 */
	@Override
	public int updateOrderProc(Map<String, String> o_no_flag) {
		int updateOrderProc = 0;
		
		// DAO의 checkOrderState를 통해 주문 취소가 가능한지 확인할 것
		
		return updateOrderProc;
	}

	/**
	 * 주문 취소 상태로 변경
	 * @param o_no : 주문번호
	 * @return updateOrderReject : 주문 취소 변경 Query 실행 결과
	 */
	@Override
	public int updateOrderReject(int o_no) {
		int updateOrderReject = 0;
		
		// DAO의 checkOrderState를 통해 주문 취소가 가능한지 확인할 것
		
		return updateOrderReject;
	}
	
	/**
	 * 주문 기록 목록을 가져옴
	 * @param order_record_searchDTO : 주문 기록을 검색하기 위해 사용하는 DTO
	 * @return order_record_list : 주문 기록 목록
	 */
	@Override
	public List<OrderRecordDTO> getOrderRecordList(OrderRecordSearchDTO order_record_searchDTO) {
		List<OrderRecordDTO> order_record_list = null;
		
		return order_record_list;
	}

	/**
	 * 주문 기록 목록의 개수를 가져옴
	 * @param order_record_searchDTO : 주문 기록을 검색하기 위해 사용하는 DTO
	 * @return order_record_list_cnt : 주문 기록 목록의 개수
	 */
	@Override
	public int getOrderRecordListCnt(OrderRecordSearchDTO order_record_searchDTO) {
		int order_record_list_cnt = 0;
		
		return order_record_list_cnt;
	}
}