/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * PointPresentDTO 클래스
 * 포인트를 선물할 때 사용할 DTO
 * @author Jo
 */
public class PointPresentDTO {
	/**
	 * 속성변수 선언
	 */
	private String from_l_id;	// 보내는 사용자 아이디
	private String to_l_id;	// 받는 사용자 아아디
	private int point;	// 보낼 포인트
	
	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */
	/**
	 * from_l_id 접근자
	 * @return from_l_id : 보내는 사용자 아이디
	 */
	public String getFrom_l_id() {
		return from_l_id;
	}
	/**
	 * from_l_id 설정자
	 * @param from_l_id : 보내는 사용자 아이디
	 */
	public void setFrom_l_id(String from_l_id) {
		this.from_l_id = from_l_id;
	}
	/**
	 * to_l_id 접근자
	 * @return to_l_id : 받는 사용자 아아디
	 */
	public String getTo_l_id() {
		return to_l_id;
	}
	/**
	 * to_l_id 설정자
	 * @param to_l_id : 받는 사용자 아아디
	 */
	public void setTo_l_id(String to_l_id) {
		this.to_l_id = to_l_id;
	}
	/**
	 * point 접근자
	 * @return point : 보낼 포인트
	 */
	public int getPoint() {
		return point;
	}
	/**
	 * point 설정자
	 * @param point : 보낼 포인트
	 */
	public void setPoint(int point) {
		this.point = point;
	}
}