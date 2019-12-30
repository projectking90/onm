/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

import java.util.Arrays;

/**
 * OrderRecordDTO 클래스
 * 주문 기록을 검색할 때 사용할 DTO
 * @author Jo
 */
public class OrderRecordDTO {
	/**
	 * 속성변수 선언
	 */	
	private String[] orderCnt;		//주문기록 카운트 




	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */

	public String[] getOrderCnt() {
		return orderCnt;
	}

	public void setOrderCnt(String[] orderCnt) {
		this.orderCnt = orderCnt;
	}

	
	
}

