/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import system.onm.dao.PointDAO;
import system.onm.dto.CardDTO;
import system.onm.dto.PointDTO;
import system.onm.dto.PointPresentDTO;
import system.onm.dto.PointSearchDTO;

/**
 * PointServiceImpl 클래스
 * 서비스 클래스
 * @author Jo
 */
@Service
@Transactional
public class PointServiceImpl implements PointService {
	/**
	 * 속성변수 선언
	 */
	@Autowired
	private PointDAO pointDAO;	// PointDAO 인터페이스를 구현받은 객체를 생성해서 저장

	/**
	 * 메소드 선언
	 */
	/**
	 * 포인트 기록 목록을 가져옴
	 * @param point_searchDTO : 포인트 검색을 위해 사용할 DTO
	 * @return point_list : 포인트 목록
	 */
	@Override
	public List<PointDTO> getPointList(PointSearchDTO point_searchDTO) {
		List<PointDTO> point_list = null;
		
		return point_list;
	}

	/**
	 * 포인트 정보를 가져옴
	 * @param s_id : 사용자 아이디
	 * @return pointDTO : 포인트 정보
	 */
	@Override
	public PointDTO getPointInfo(String s_id) {
		PointDTO pointDTO = null;
		
		return pointDTO;
	}

	/**
	 * 사용자간 포인트 선물
	 * @param point_presentDTO : 포인트 검색을 위해 사용할 DTO
	 * @return update_result : 포인트 선물 Query 결과
	 */
	@Override
	public int updatePointPresent(PointPresentDTO point_presentDTO) {
		int update_result = 0;
		
		return update_result;
	}

	/**
	 * 포인트 전환
	 * @param point_presentDTO : 포인트 검색을 위해 사용할 DTO
	 * @return update_result : 포인트 전환 Query 결과
	 */
	@Override
	public int updatePointToCash(PointPresentDTO point_presentDTO) {
		int update_result = 0;
		
		return update_result;
	}

	/**
	 * 포인트 충전
	 * @param cardDTO : 카드 정보를 담은 DTO
	 * @return insert_result : 포인트 충전 Query 결과
	 */
	@Override
	public int insertPointCharge(CardDTO cardDTO) {
		int insert_result = 0;
		
		return insert_result;
	}
}