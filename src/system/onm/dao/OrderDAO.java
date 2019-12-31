/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dao;

import java.util.List;
import java.util.Map;

import system.onm.dto.MenuDTO;
import system.onm.dto.OrderDTO;
import system.onm.dto.OrderRecommendDTO;
import system.onm.dto.OrderRecommendSearchDTO;
import system.onm.dto.StoreDTO;
import system.onm.dto.StoreSearchDTO;

/**
 * OrderDAO 인터페이스
 * DAO 클래스를 사용하기 위해 정의한 인터페이스
 * @author Jo
 */
public interface OrderDAO {
	/**
	 * 속성변수 선언
	 */
	String sqlSessionPath = "system.onm.dao.OrderDAO.";

	/**
	 * 메소드 선언
	 */
	List<StoreDTO> getStoreList(StoreSearchDTO store_searchDTO);	// 가게 목록를 가져옴
	List<MenuDTO> getMenuList(int s_no);	// 가게의 메뉴 목록를 가져옴
	int insertOrder(OrderDTO orderDTO);	// 고객의 주문을 추가
	List<OrderDTO> getOrderList(String c_id);	// 고객의 주문 목록를 가져옴
	OrderDTO getOrderDetail(int o_no);	// 주문정보를 가져옴
	int deleteOrder(int o_no);	// 고객의 주문을 취소
	String checkOrderState(int o_no);	// 주문의 상태를 확인함
	List<OrderRecommendDTO> getOrderRecommendList(OrderRecommendSearchDTO order_recommend_searchDTO);	// 추천 주문 목록을 가져옴
	List<OrderDTO> getOrderWaitList(int s_id);	// 가게의 접수대기 중인 주문 목록을 가져옴
	OrderDTO getOrderStoreDetail(int o_no);	// 가게의 주문 상세정보를 가져옴
	List<OrderDTO> getOrderProcList(int s_id);	// 가게의 처리 중인 주문 목록을 가져옴
	List<OrderDTO> getOrderDoneList(int s_id);	// 가게의 완료된 주문 목록을 가져옴
	int updateOrderProc(Map<String, String> o_no_flag);	// 주문 상태를 변경
	int updateOrderReject(int o_no);	// 주문 취소 상태로 변경
}