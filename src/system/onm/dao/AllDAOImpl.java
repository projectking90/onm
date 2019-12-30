/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import system.onm.dto.AddrCityDTO;
import system.onm.dto.AddrDongDTO;
import system.onm.dto.AddrGuDTO;
import system.onm.dto.MenuTrackingDTO;

/**
 * AllDAOImpl 클래스
 * DAO 클래스, bean 태그로 자동 등록됨
 * @author Jo
 */
@Repository
public class AllDAOImpl implements AllDAO {
	/**
	 * 속성변수 선언
	 */
	@Autowired
	private SqlSessionTemplate sqlSession;	// SqlSessionTemplate 객체를 생성하고 저장

	/**
	 * 메소드 선언
	 */
	/**
	 * 시의 목록을 가져오는 메소드
	 * @return addr_city : 시의 목록
	 */
	@Override
	public List<AddrCityDTO> getAddrCity() {
		List<AddrCityDTO> addr_city = this.sqlSession.selectList(
					sqlSessionPath + "getAddrCity"
				);
		
		return addr_city;
	}

	/**
	 * 구의 목록을 가져오는 메소드
	 * @param city : 선택한 시
	 * @return addr_gu : 데이터베이스에서 가져온 구
	 */
	@Override
	public List<AddrGuDTO> getAddrGu(String city) {
		List<AddrGuDTO> addr_gu = this.sqlSession.selectList(
				sqlSessionPath + "getAddrGu"
				, city
			);
	
		return addr_gu;
	}

	/**
	 * 동의 목록을 가져오는 메소드
	 * @param gu : 선택한 구
	 * @return addr_dong : 데이터베이스에서 가져온 동
	 */
	@Override
	public List<AddrDongDTO> getAddrDong(String gu) {
		List<AddrDongDTO> addr_dong = this.sqlSession.selectList(
				sqlSessionPath + "getAddrDong"
				, gu
			);
		
		return addr_dong;
	}

	/**
	 * 메뉴 트래킹 정보를 가져옴
	 * @param path_user_flag : 경로와 유저구분
	 * @return menu_tracking : 메뉴 트래킹 정보
	 */
	@Override
	public MenuTrackingDTO getMenuTracking(Map<String, String> path_user_flag) {
		MenuTrackingDTO menu_tracking_list = this.sqlSession.selectOne(
				sqlSessionPath + "getMenuTracking"
				, path_user_flag
			);
		
		return menu_tracking_list;
	}
}