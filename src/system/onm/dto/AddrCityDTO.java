/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * AddrCityDTO 클래스
 * 주소의 시 부분을 가져올 DTO
 * @author Jo
 */
public class AddrCityDTO {
	/**
	 * 속성변수 선언
	 */
	private String city_name;	// option 태그의 value, text 값
	
	/**
	 * 접근자, 설정자 선언
	 */
	/**
	 * city_name 접근자
	 * @return city_name : option 태그의 value, text 값
	 */
	public String getCity_name() {
		return city_name;
	}

	/**
	 * city_name 설정자
	 * @param city_name : option 태그의 value, text 값
	 */
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
}