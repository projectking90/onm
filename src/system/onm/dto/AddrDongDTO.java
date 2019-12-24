/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * AddrDongDTO 클래스
 * 주소의 동 부분을 가져올 DTO
 * @author Jo
 */
public class AddrDongDTO {
	/**
	 * 속성변수 선언
	 */
	private String dong_name;	// option 태그의 value, text 값
	
	/**
	 * 접근자, 설정자 선언
	 */
	/**
	 * dong_name 접근자
	 * @return dong_name : option 태그의 value, text 값
	 */
	public String getDong_name() {
		return dong_name;
	}

	/**
	 * dong_name 설정자
	 * @param dong_name : option 태그의 value, text 값
	 */
	public void setDong_name(String dong_name) {
		this.dong_name = dong_name;
	}
}