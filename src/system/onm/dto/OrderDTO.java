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
	private int o_no;	// 주문번호
	private int c_no;	// 고객번호
	private String c_id;	// 고객아이디
	private String s_no;	// 가게번호
	private String o_state;	// 주문상태
	private int addr_code;	// 주소코드
	private String location;	// 상세주소
	private String o_phone;	// 고객 연락처
	private String order_time;	// 주문 시간
	private String pick_time;	// 픽업 시간
	private String request;	// 요구사항
	private String is_del;	// 삭제여부

	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */
	/**
	 * o_no 접근자
	 * @return o_no : 주문번호
	 */
	public int getO_no() {
		return o_no;
	}
	/**
	 * o_no 설정자
	 * @param o_no : 주문번호
	 */
	public void setO_no(int o_no) {
		this.o_no = o_no;
	}
	/**
	 * c_no 접근자
	 * @return c_no : 고객번호
	 */
	public int getC_no() {
		return c_no;
	}
	/**
	 * c_no 설정자
	 * @param c_no : 고객번호
	 */
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	/**
	 * c_id 접근자
	 * @return c_id : 고객아이디
	 */
	public String getC_id() {
		return c_id;
	}
	/**
	 * c_id 설정자
	 * @param c_id : 고객아이디
	 */
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	/**
	 * s_no 접근자
	 * @return s_no : 가게번호
	 */
	public String getS_no() {
		return s_no;
	}
	/**
	 * s_no 설정자
	 * @param s_no : 가게번호
	 */
	public void setS_no(String s_no) {
		this.s_no = s_no;
	}
	/**
	 * o_state 접근자
	 * @return o_state : 주문상태
	 */
	public String getO_state() {
		return o_state;
	}
	/**
	 * o_state 설정자
	 * @param o_state : 주문상태
	 */
	public void setO_state(String o_state) {
		this.o_state = o_state;
	}
	/**
	 * addr_code 접근자
	 * @return addr_code : 주소코드
	 */
	public int getAddr_code() {
		return addr_code;
	}
	/**
	 * addr_code 설정자
	 * @param addr_code : 주소코드
	 */
	public void setAddr_code(int addr_code) {
		this.addr_code = addr_code;
	}
	/**
	 * location 접근자
	 * @return location : 상세주소
	 */
	public String getLocation() {
		return location;
	}
	/**
	 * location 설정자
	 * @param location : 상세주소
	 */
	public void setLocation(String location) {
		this.location = location;
	}
	/**
	 * o_phone 접근자
	 * @return o_phone : 고객 연락처
	 */
	public String getO_phone() {
		return o_phone;
	}
	/**
	 * o_phone 설정자
	 * @param o_phone : 고객 연락처
	 */
	public void setO_phone(String o_phone) {
		this.o_phone = o_phone;
	}
	/**
	 * order_time 접근자
	 * @return order_time : 주문 시간
	 */
	public String getOrder_time() {
		return order_time;
	}
	/**
	 * order_time 설정자
	 * @param order_time : 주문 시간
	 */
	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}
	/**
	 * pick_time 접근자
	 * @return pick_time : 픽업 시간
	 */
	public String getPick_time() {
		return pick_time;
	}
	/**
	 * pick_time 설정자
	 * @param pick_time : 픽업 시간
	 */
	public void setPick_time(String pick_time) {
		this.pick_time = pick_time;
	}
	/**
	 * request 접근자
	 * @return request : 요구사항
	 */
	public String getRequest() {
		return request;
	}
	/**
	 * request 설정자
	 * @param request : 요구사항
	 */
	public void setRequest(String request) {
		this.request = request;
	}
	/**
	 * is_del 접근자
	 * @return is_del : 삭제여부
	 */
	public String getIs_del() {
		return is_del;
	}
	/**
	 * is_del 설정자
	 * @param is_del : 삭제여부
	 */
	public void setIs_del(String is_del) {
		this.is_del = is_del;
	}
}