/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * StoreDTO 클래스
 * 가게를 추가, 수정할 때 사용할 DTO
 * @author Jo
 */
public class StoreDTO {
	/**
	 * 속성변수 선언
	 */
	private int s_no;	// 가게번호
	private String s_id;	// 가게아이디
	private String s_name;	// 가게명
	private String s_reg_num;	// 사업자번호
	private String email;	// 이메일
	private String s_phone;	// 연락처
	private String s_reg_date;	// 등록일


	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */
	/**
	 * s_no 접근자
	 * @return s_no : 가게번호
	 */
	public int getS_no() {
		return s_no;
	}
	/**
	 * s_no 설정자
	 * @param s_no : 가게번호
	 */
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	/**
	 * s_id 접근자
	 * @return s_id : 가게아이디
	 */
	public String getS_id() {
		return s_id;
	}
	/**
	 * s_id 설정자
	 * @param s_id : 가게아이디
	 */
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	/**
	 * s_name 접근자
	 * @return s_name : 가게명
	 */
	public String getS_name() {
		return s_name;
	}
	/**
	 * s_name 설정자
	 * @param s_name : 가게명
	 */
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	/**
	 * s_reg_num 접근자
	 * @return s_reg_num : 사업자번호
	 */
	public String getS_reg_num() {
		return s_reg_num;
	}
	/**
	 * s_reg_num 설정자
	 * @param s_reg_num : 사업자번호
	 */
	public void setS_reg_num(String s_reg_num) {
		this.s_reg_num = s_reg_num;
	}
	/**
	 * email 접근자
	 * @return email : 이메일
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * email 설정자
	 * @param email : 이메일
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * s_phone 접근자
	 * @return s_phone : 연락처
	 */
	public String getS_phone() {
		return s_phone;
	}
	/**
	 * s_phone 설정자
	 * @param s_phone : 연락처
	 */
	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}
	/**
	 * s_reg_date 접근자
	 * @return s_reg_date : 등록일
	 */
	public String getS_reg_date() {
		return s_reg_date;
	}
	/**
	 * s_reg_date 설정자
	 * @param s_reg_date : 등록일
	 */
	public void setS_reg_date(String s_reg_date) {
		this.s_reg_date = s_reg_date;
	}
}