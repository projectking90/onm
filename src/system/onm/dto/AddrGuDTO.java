/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * AddrGuDTO 클래스
 * 주소의 구 부분을 가져올 DTO
 * @author Jo
 */
public class AddrGuDTO {
	/**
	 * 속성변수 선언
	 */
	private String gu_name;	// option 태그의 value, text 값
	
	/**
	 * 접근자, 설정자 선언
	 */
	/**
	 * gu_name 접근자
	 * @return gu_name : option 태그의 value, text 값
	 */
	public String getGu_name() {
		return gu_name;
	}

	/**
	 * gu_name 설정자
	 * @param gu_name : option 태그의 value, text 값
	 */
	public void setGu_name(String gu_name) {
		this.gu_name = gu_name;
	}
}