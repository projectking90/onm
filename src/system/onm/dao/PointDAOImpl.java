/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import system.onm.dto.CardDTO;
import system.onm.dto.PointDTO;
import system.onm.dto.PointPresentDTO;
import system.onm.dto.PointSearchDTO;

/**
 * PointDAOImpl 클래스
 * DAO 클래스, bean 태그로 자동 등록됨
 * @author Jo
 */
@Repository
public class PointDAOImpl implements PointDAO {
	/**
	 * 속성변수 선언
	 */
	@Autowired
	private SqlSessionTemplate sqlSession;	// SqlSessionTemplate 객체를 생성하고 저장

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
		List<PointDTO> point_list = this.sqlSession.selectList(
				"system.onm.dao.PointDAO.getPointList"
				,point_searchDTO
		);
		
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
		int update_result = this.sqlSession.update(
				"system.onm.dao.PointDAO.updatePointPresent"
				,point_presentDTO
		);
		
		return update_result;
	}

	/**
	 * 포인트 전환
	 * @param point_presentDTO : 포인트 검색을 위해 사용할 DTO
	 * @return update_result : 포인트 전환 Query 결과
	 */
	@Override
	public int updatePointToCash(PointDTO pointDTO) {
		int update_result = this.sqlSession.update(
				"system.onm.dao.PointDAO.updatePointToCash"
				,pointDTO
		);
		
		return update_result;
	}

	/**
	 * 포인트 선물, 전환 시 소유 포인트 확인
	 * @param from_l_id : 포인트를 보내는 사용자의 아이디
	 * @return check_point : 포인트를 보내는 사용자의 포인트
	 */
	@Override
	public int checkPoint(String from_l_id) {
		int check_point = 0;
		
		return check_point;
	}

	/**
	 * 포인트 충전
	 * @param cardDTO : 카드 정보를 담은 DTO
	 * @return insert_result : 포인트 충전 Query 결과
	 */
	@Override
	public int insertPointCharge(PointDTO pointDTO) {
		int insert_result = this.sqlSession.insert(
				"system.onm.dao.PointDAO.insertPointCharge"
				,pointDTO
		);
		
		return insert_result;
	}

	/**
	 * 포인트 충전 시 카드 번호 확인
	 * @param cardDTO : 카드 정보 DTO
	 * @return check_card_num : 카드 번호 일치 여부
	 */
	@Override
	public int checkCardNum(CardDTO cardDTO) {
		int check_card_num = 0;
		
		return check_card_num;
	}

	/**
	 * 포인트 충전 시 CVC 번호 확인
	 * @param cardDTO : 카드 정보 DTO
	 * @return check_cvc : cvc 번호 일치 여부
	 */
	@Override
	public int checkCVC(CardDTO cardDTO) {
		int check_cvc = 0;
		
		return check_cvc;
	}
}