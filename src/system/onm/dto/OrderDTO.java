/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * OrderDTO 클래스
 * 고객이 주문을 할 때 사용할 DTO
 * @author Jo
 */
public class OrderDTO {
	/**
	 * 속성변수 선언
	 */
	private int o_no;
	private int c_no;
	private String c_id;
	private String s_no;
	private String o_state;
	private int addr_code;
	private String location;
	private String o_phone;
	private String order_time;
	private String pick_time;
	private String request;
	private String is_del;
	public int getO_no() {
		return o_no;
	}
	public void setO_no(int o_no) {
		this.o_no = o_no;
	}
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getS_no() {
		return s_no;
	}
	public void setS_no(String s_no) {
		this.s_no = s_no;
	}
	public String getO_state() {
		return o_state;
	}
	public void setO_state(String o_state) {
		this.o_state = o_state;
	}
	public int getAddr_code() {
		return addr_code;
	}
	public void setAddr_code(int addr_code) {
		this.addr_code = addr_code;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getO_phone() {
		return o_phone;
	}
	public void setO_phone(String o_phone) {
		this.o_phone = o_phone;
	}
	public String getOrder_time() {
		return order_time;
	}
	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}
	public String getPick_time() {
		return pick_time;
	}
	public void setPick_time(String pick_time) {
		this.pick_time = pick_time;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public String getIs_del() {
		return is_del;
	}
	public void setIs_del(String is_del) {
		this.is_del = is_del;
	}
	

	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */
}