/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

/**
 * StoreDTO 클래스
 * 가게 업종을 추가, 수정할 때 사용할 DTO
 * @author Jo
 */
public class StoreKindDTO {
	private int sk_no;
	private int ska_code;
	private int skb_code;
	private int s_no;
	private String sk_name;
	private int addr_code;
	private String location;
	private String sk_phone;
	private String sk_reg_date;
	private String is_del;
	
	public int getSk_no() {
		return sk_no;
	}
	public void setSk_no(int sk_no) {
		this.sk_no = sk_no;
	}
	public int getSka_code() {
		return ska_code;
	}
	public void setSka_code(int ska_code) {
		this.ska_code = ska_code;
	}
	public int getSkb_code() {
		return skb_code;
	}
	public void setSkb_code(int skb_code) {
		this.skb_code = skb_code;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getSk_name() {
		return sk_name;
	}
	public void setSk_name(String sk_name) {
		this.sk_name = sk_name;
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
	public String getSk_phone() {
		return sk_phone;
	}
	public void setSk_phone(String sk_phone) {
		this.sk_phone = sk_phone;
	}
	public String getSk_reg_date() {
		return sk_reg_date;
	}
	public void setSk_reg_date(String sk_reg_date) {
		this.sk_reg_date = sk_reg_date;
	}
	public String getIs_del() {
		return is_del;
	}
	public void setIs_del(String is_del) {
		this.is_del = is_del;
	}
}