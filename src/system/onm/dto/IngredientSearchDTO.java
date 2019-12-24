/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * IngredientSearchDTO 클래스
 * 식자재 검색할 때 사용할 DTO
 * @author Jo
 */
public class IngredientSearchDTO {
	/**
	 * 속성변수 선언
	 */

	
	private String keyword1;        // 키워드
	private int selectPageNo=1;    // 선택 페이지                      (DB 연동시 필수)
	private int rowCntPerPage=10;  // 한 화면에 보여줄 행 개수            (DB 연동시 필수)
	public String getKeyword1() {
		return keyword1;
		
		
	}
	public int getSelectPageNo() {
		return selectPageNo;
	}
	public void setSelectPageNo(int selectPageNo) {
		this.selectPageNo = selectPageNo;
	}
	public int getRowCntPerPage() {
		return rowCntPerPage;
	}
	public void setRowCntPerPage(int rowCntPerPage) {
		this.rowCntPerPage = rowCntPerPage;
	}
	public void setKeyword1(String keyword1) {
		this.keyword1 = keyword1;
	}
	
	
	


	/**
	 * 접근자, 설정자 선언
	 */
	
	
	/**
	 * 생성자 선언
	 */
	
	
	
}