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
	private int s_no;
	private String s_id;
	private String pwd;
	private String s_name;
	private String s_reg_num;
	private String email;
	private String s_phone;
	private String s_reg_date;
	
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_reg_num() {
		return s_reg_num;
	}
	public void setS_reg_num(String s_reg_num) {
		this.s_reg_num = s_reg_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getS_phone() {
		return s_phone;
	}
	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}
	public String getS_reg_date() {
		return s_reg_date;
	}
	public void setS_reg_date(String s_reg_date) {
		this.s_reg_date = s_reg_date;
	}
	
	
	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */
}