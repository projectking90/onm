/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * PointDTO 클래스
 * 포인트 정보를 담을 때 사용할 DTO
 * @author Jo
 */
public class PointDTO {
	/**
	 * 속성변수 선언
	 */
	private int p_no;	// 포인트 번호
	private String l_flag;	// 유저 구분
	private String l_id;	// 아이디
	private String p_state;	// 포인트출금여부
	private int amount;	// 포인트금액
	private String reg_date;	// 등록일
	
	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */
	/**
	 * p_no 접근자
	 * @return p_no : 
	 */
	public int getP_no() {
		return p_no;
	}
	/**
	 * p_no 설정자
	 * @param p_no : 
	 */
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	/**
	 * l_flag 접근자
	 * @return l_flag : 
	 */
	public String getL_flag() {
		return l_flag;
	}
	/**
	 * l_flag 설정자
	 * @param l_flag : 
	 */
	public void setL_flag(String l_flag) {
		this.l_flag = l_flag;
	}
	/**
	 * l_id 접근자
	 * @return l_id : 
	 */
	public String getL_id() {
		return l_id;
	}
	/**
	 * l_id 설정자
	 * @param l_id : 
	 */
	public void setL_id(String l_id) {
		this.l_id = l_id;
	}
	/**
	 * p_state 접근자
	 * @return p_state : 
	 */
	public String getP_state() {
		return p_state;
	}
	/**
	 * p_state 설정자
	 * @param p_state : 
	 */
	public void setP_state(String p_state) {
		this.p_state = p_state;
	}
	/**
	 * amount 접근자
	 * @return amount : 
	 */
	public int getAmount() {
		return amount;
	}
	/**
	 * amount 설정자
	 * @param amount : 
	 */
	public void setAmount(int amount) {
		this.amount = amount;
	}
	/**
	 * reg_date 접근자
	 * @return reg_date : 
	 */
	public String getReg_date() {
		return reg_date;
	}
	/**
	 * reg_date 설정자
	 * @param reg_date : 
	 */
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}