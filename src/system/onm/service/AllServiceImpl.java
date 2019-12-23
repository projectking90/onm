/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import system.onm.dao.AllDAO;

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
}