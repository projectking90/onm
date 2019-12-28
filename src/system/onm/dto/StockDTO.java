/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * StockDTO 클래스
 * 재고를 추가, 수정, 삭제할 때 사용할 DTO
 * @author Jo
 */
public class StockDTO {
	/**
	 * 속성변수 선언
	 */
	/*private int st_no; // 재고 번호
	private int i_no; // 식자재 번호
	private String i_name; // 식자재 상품명
	private int cnt; // 수량
	private String st_state; // 재고 상태
	private String sr_state; // 입출고 상태
	private int price;	// 가격
	private String st_reg_date; // 등록일
	private String is_del; // 삭제 여부
	*/
	
	private int st_no;
	private String i_name;
	private int cnt;
	private String st_state;
	
	public String getI_name() {
		return i_name;
	}
	public void setI_name(String i_name) {
		this.i_name = i_name;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getSt_state() {
		return st_state;
	}
	public void setSt_state(String st_state) {
		this.st_state = st_state;
	}
	public int getSt_no() {
		return st_no;
	}
	public void setSt_no(int st_no) {
		this.st_no = st_no;
	}

	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */
}