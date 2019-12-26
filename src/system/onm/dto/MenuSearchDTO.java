/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * MenuSearchDTO 클래스
 * 메뉴 검색할 때 사용할 DTO
 * @author Jo
 */
public class MenuSearchDTO {
	/**
	 * 속성변수 선언
	 */
	private String keyword;
	private int selectPageNo=1;
	private int rowCntPerPage=10;
	
	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */

	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
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
}