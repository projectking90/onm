/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.service;

import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import system.onm.dao.AllDAO;
import system.onm.dto.AddrCityDTO;
import system.onm.dto.AddrDongDTO;
import system.onm.dto.AddrGuDTO;
import system.onm.dto.MenuTrackingDTO;

/**
 * AllServiceImpl 클래스
 * 공통적으로 사용할 DB의 
 * 서비스 클래스
 * @author Jo
 */
@Service
@Transactional
public class AllServiceImpl implements AllService {
	/**
	 * 속성변수 선언
	 */
	@Autowired
	private AllDAO allDAO;	// AllDAO 인터페이스를 구현받은 객체를 생성해서 저장

	/**
	 * 메소드 선언
	 */
	/**
	 * 시의 목록을 가져오는 메소드
	 * @return addr_city : 시의 목록
	 */
	@Override
	public List<AddrCityDTO> getAddrCity() {
		List<AddrCityDTO> addr_city = this.allDAO.getAddrCity();
		
		return addr_city;
	}

	/**
	 * 구의 목록을 가져오는 메소드
	 * @param city : 선택한 시
	 * @return addr_gu : 데이터베이스에서 가져온 구
	 */
	@Override
	public List<AddrGuDTO> getAddrGu(String city) {
		List<AddrGuDTO> addr_gu = this.allDAO.getAddrGu(city);
		
		return addr_gu;
	}

	/**
	 * 동의 목록을 가져오는 메소드
	 * @param gu : 선택한 구
	 * @return addr_dong : 데이터베이스에서 가져온 동
	 */
	@Override
	public List<AddrDongDTO> getAddrDong(String gu) {
		List<AddrDongDTO> addr_dong = this.allDAO.getAddrDong(gu);
		
		return addr_dong;
	}

	/**
	 * 메뉴 트래킹 정보를 가져옴
	 * @param path_user_flag : 경로와 유저구분
	 * @return menu_tracking_list : 메뉴 트래킹 정보
	 */
	@Override
	public List<MenuTrackingDTO> getMenuTracking(Map<String, String> path_user_flag) {
		List<MenuTrackingDTO> menu_tracking_list = new ArrayList<MenuTrackingDTO>();
		MenuTrackingDTO temp = new MenuTrackingDTO();

		do {
			temp = this.allDAO.getMenuTracking(path_user_flag);
			menu_tracking_list.add(temp);
			path_user_flag.put("path", temp.getBefore_path());
		} while(!temp.getBefore_path().equals(" "));
		
		return menu_tracking_list;
	}
}