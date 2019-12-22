/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * IngredientDTO 클래스
 * 식자재를 추가, 수정, 삭제할 때 사용할 DTO
 * @author Jo
 */
public class IngredientDTO {
	/**
	 * 속성변수 선언
	 */

	/**
	 * 생성자 선언
	 */

	/**
	 * 접근자, 설정자 선언
	 */
	
	
	
	
	
	
// ======================================================================================== 처음	
	
	private int i_no;					// 식자재번호
	private int ia_code;				// 대분류
	private int ib_code;				// 소분류
	private int io_code;				// 원산지
	private int s_no;					// 가게번호
	private String num;					// 상품코드
	private String i_name;				// 상품명
	private String i_size;				// 규격
	private int price;					// 매입가격
	private String i_comment;			// 설명
	private String reg_date;			// 등록일
	private String is_del;				// 삭제여부

	// -----------------------------------------------
	
	public int getI_no() {
		return i_no;
	}
	public void setI_no(int i_no) {
		this.i_no = i_no;
	}
	public int getIa_code() {
		return ia_code;
	}
	public void setIa_code(int ia_code) {
		this.ia_code = ia_code;
	}
	public int getIb_code() {
		return ib_code;
	}
	public void setIb_code(int ib_code) {
		this.ib_code = ib_code;
	}
	public int getIo_code() {
		return io_code;
	}
	public void setIo_code(int io_code) {
		this.io_code = io_code;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getI_name() {
		return i_name;
	}
	public void setI_name(String i_name) {
		this.i_name = i_name;
	}
	public String getI_size() {
		return i_size;
	}
	public void setI_size(String i_size) {
		this.i_size = i_size;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getI_comment() {
		return i_comment;
	}
	public void setI_comment(String i_comment) {
		this.i_comment = i_comment;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getIs_del() {
		return is_del;
	}
	public void setIs_del(String is_del) {
		this.is_del = is_del;
	}
	
	
// ======================================================================================== 끝	
	
	
	
	
}

