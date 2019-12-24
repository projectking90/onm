/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

import java.util.List;

/**
 * AddrDTO 클래스
 * 주소를 가져오는 DTO
 * @author Jo
 */
public class AddrDTO {
	/**
	 * 속성변수 선언
	 */
	private String city;	// 선택한 city 이름
	private List<AddrCityDTO> cityList;	// 데이터베이스에서 가져온 city 값
	private String gu;	// 선택한 gu 이름
	private List<AddrGuDTO> guList;	// 데이터베이스에서 가져온 gu 값
	private String dong;	// 선택한 dong 이름
	private List<AddrDongDTO> dongList;	// 데이터베이스에서 가져온 dong 값
	
	/**
	 * 접근자, 설정자 선언
	 */
	/**
	 * city 접근자
	 * @return city : 선택한 city 이름
	 */
	public String getCity() {
		return city;
	}
	/**
	 * city 설정자
	 * @param city : 선택한 city 이름
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/**
	 * cityList 접근자
	 * @return cityList : 데이터베이스에서 가져온 city 값
	 */
	public List<AddrCityDTO> getCityList() {
		return cityList;
	}
	/**
	 * cityList 설정자
	 * @param cityList : 데이터베이스에서 가져온 city 값
	 */
	public void setCityList(List<AddrCityDTO> cityList) {
		this.cityList = cityList;
	}
	/**
	 * gu 접근자
	 * @return gu : 선택한 gu 이름
	 */
	public String getGu() {
		return gu;
	}
	/**
	 * gu 설정자
	 * @param gu : 선택한 gu 이름
	 */
	public void setGu(String gu) {
		this.gu = gu;
	}
	/**
	 * guList 접근자
	 * @return guList : 데이터베이스에서 가져온 gu 값
	 */
	public List<AddrGuDTO> getGuList() {
		return guList;
	}
	/**
	 * guList 설정자
	 * @param guList : 데이터베이스에서 가져온 gu 값
	 */
	public void setGuList(List<AddrGuDTO> guList) {
		this.guList = guList;
	}
	/**
	 * dong 접근자
	 * @return dong : 선택한 dong 이름
	 */
	public String getDong() {
		return dong;
	}
	/**
	 * dong 설정자
	 * @param dong : 선택한 dong 이름
	 */
	public void setDong(String dong) {
		this.dong = dong;
	}
	/**
	 * dongList 접근자
	 * @return dongList : 데이터베이스에서 가져온 dong 값
	 */
	public List<AddrDongDTO> getDongList() {
		return dongList;
	}
	/**
	 * dongList 설정자
	 * @param dongList : 데이터베이스에서 가져온 dong 값
	 */
	public void setDongList(List<AddrDongDTO> dongList) {
		this.dongList = dongList;
	}
}