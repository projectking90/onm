/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * SellingRecordDTO 클래스
 * 판매 기록을 검색할 때 사용할 DTO
 * @author Jo
 */
public class SellingRecordDTO {
	/**
	 * 속성변수 선언
	 */
	
	
	private String[] sellingCnt;			// 판매기록 카운트
	private String[] sellingDate;			// 날짜별 판매 유형
	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */



	public String[] getSellingCnt() {
		return sellingCnt;
	}

	public void setSellingCnt(String[] sellingCnt) {
		this.sellingCnt = sellingCnt;
	}

	public String[] getSellingDate() {
		return sellingDate;
	}

	public void setSellingDate(String[] sellingDate) {
		this.sellingDate = sellingDate;
	}

	
	
	
	
}
