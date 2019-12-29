/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.service;

import java.util.List;

import system.onm.dto.CardDTO;
import system.onm.dto.PointDTO;
import system.onm.dto.PointPresentDTO;
import system.onm.dto.PointSearchDTO;

/**
 * PointService 인터페이스
 * 서비스 클래스를 사용하기 위해 정의한 인터페이스
 * @author Jo
 */
public interface PointService {
	/**
	 * 메소드 선언
	 */
	List<PointDTO> getPointList(PointSearchDTO point_searchDTO);	// 포인트 기록 목록을 가져옴
	PointDTO getPointInfo(String s_id);	// 포인트 정보를 가져옴
	int updatePointPresent(PointPresentDTO point_presentDTO);	// 사용자간 포인트 선물
	int updatePointToCash(PointPresentDTO point_presentDTO);	// 포인트 전환
	int insertPointCharge(PointDTO pointDTO);	// 포인트 충전
}