/**
 * 아래에 나오는 클래스의 소속 패키지 경로를 설정하기
 * 모든 자바 클래스 최상단에는 소속 패키지 경로가 먼저 나옴
 */
package system.onm.dto;

import java.util.List;

/**
 * MenuDTO 클래스
 * 메뉴를 추가, 수정, 삭제할 때 사용할 DTO
 * @author Jo
 */
public class CodeStoreKindDTO {
	/**
	 * 속성변수 선언
	 */
	private String ska_code;
	private String ska_name;
	private List<CodeStoreKindAlphaDTO> ska_nameList;	// 데이터베이스에서 가져온 ma_name 값
	private String skb_code;
	private String skb_name;
	private List<CodeStoreKindBetaDTO> skb_nameList;	// 데이터베이스에서 가져온 mb_name 값
	public String getSka_code() {
		return ska_code;
	}
	public void setSka_code(String ska_code) {
		this.ska_code = ska_code;
	}
	public String getSka_name() {
		return ska_name;
	}
	public void setSka_name(String ska_name) {
		this.ska_name = ska_name;
	}
	public List<CodeStoreKindAlphaDTO> getSka_nameList() {
		return ska_nameList;
	}
	public void setSka_nameList(List<CodeStoreKindAlphaDTO> ska_nameList) {
		this.ska_nameList = ska_nameList;
	}
	public String getSkb_code() {
		return skb_code;
	}
	public void setSkb_code(String skb_code) {
		this.skb_code = skb_code;
	}
	public String getSkb_name() {
		return skb_name;
	}
	public void setSkb_name(String skb_name) {
		this.skb_name = skb_name;
	}
	public List<CodeStoreKindBetaDTO> getSkb_nameList() {
		return skb_nameList;
	}
	public void setSkb_nameList(List<CodeStoreKindBetaDTO> skb_nameList) {
		this.skb_nameList = skb_nameList;
	}
	

	
	/**
	 * 생성자 선언
	 */
	/**
	 * 접근자, 설정자 선언
	 */

	
}