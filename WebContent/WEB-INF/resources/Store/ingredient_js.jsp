<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- css에 관련된 jsp 파일 수입 -->
<%@ include file="/WEB-INF/resources/Store/ingredient_css.jsp"%>
<!DOCTYPE html>

<!-- 식자재 리스트에 관한 javascript -->
<script>
	function goIngDetailForm(i_no) {
		var str = "i_no=" + i_no;
		location.replace("/onm/store_ingredient_detail_form.onm?" + str);
	}

	// [식자재 등록] 이동함수 
	function goIngredientInsertForm(){
		location.replace("/onm/store_ingredient_insert_form.onm");
	}
	
	$(document).ready(function() {

		//--------------------------------------------------------------------
		// 페이징 처리 관련 HTML 소스를 class=pagingNumber 가진 태그 안에 삽입하기
		//--------------------------------------------------------------------
		$(".pagingNumber").html(getPagingNumber("#" // 검색 결과 총 행 개수
		, "#" // 선택된 현재 페이지 번호
		, "#" // 페이지 당 출력행의 개수
		, "#" // 페이지 당 보여줄 페이지번호 개수
		, "goSearch();" // 페이지 번호 클릭 후 실행할 자스코드
		));

	});
</script>