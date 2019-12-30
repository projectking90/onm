/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.service;

import java.util.List;
import java.util.Map;

import system.onm.dto.AddrCityDTO;
import system.onm.dto.AddrDongDTO;
import system.onm.dto.AddrGuDTO;
import system.onm.dto.MenuTrackingDTO;

/**
 * AllService 인터페이스
 * 서비스 클래스를 사용하기 위해 정의한 인터페이스
 * @author Jo
 */
public interface AllService {
	/**
	 * 메소드 선언
	 */
	List<AddrCityDTO> getAddrCity();	// 시의 목록을 가져오는 메소드
	List<AddrGuDTO> getAddrGu(String city);	// 구의 목록을 가져오는 메소드
	List<AddrDongDTO> getAddrDong(String gu);	// 동의 목록을 가져오는 메소드
	List<MenuTrackingDTO> getMenuTracking(Map<String, String> path_user_flag);	// 메뉴 트래킹 정보를 가져옴
}