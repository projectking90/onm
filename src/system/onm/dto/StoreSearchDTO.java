/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * StoreSearchDTO 클래스
 * 가게 검색할 때 사용할 DTO
 * @author Jo
 */
public class StoreSearchDTO {
	/**
	 * 속성변수 선언
	 */
	private String orderLocation;
	private String c_id;

	public String getOrderLocation() {
		return orderLocation;
	}

	public void setOrderLocation(String orderLocation) {
		this.orderLocation = orderLocation;
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */
}