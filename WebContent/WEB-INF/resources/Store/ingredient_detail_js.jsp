<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- css에 관련된 jsp 파일 수입 -->
<%@ include file="/WEB-INF/resources/Store/ingredient_detail_css.jsp"%>
<!DOCTYPE html>

<!-- 식자재 상세보기에 관한 javascript -->
<script>
	function goIngDetailUpDelForm(i_no) {
		var str = $("[name=ingredient_detail_form]").serialize();
		location.replace("/onm/store_ingredient_detail_form.onm?" + str);
	}

	function checkIngDeleteForm() {
		if (confirm("정말 삭제하시겠습니까?") == false) {
			return;
		}

		//else if(upDel=='up')
		//=============================================================================
		// 현재 화면에서 페이지 이동 없이 서버쪽 "${ctRoot}/boardUpDelProc.do" 를 호출하여
		// [게시판 수정 또는 삭제 적용 개수]를 받는다
		//=============================================================================
		var i_no = $('[name=i_no]').val();

		$.ajax({
			// 접속할 서버쪽 URL 주소 설정
			url : "store_ingredient_delete.onm"
			// 전송 방법 설정
			,
			type : "post"
			// 서버로 보낼 파라미터명과 파라미터값을 설정
			,
			data : "i_no=" + i_no

			//서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정
			// 매개변수 upDelCnt 에는 [게시판 수정 또는 삭제 적용 개수]가 들어온다.
			,
			success : function(delete_result) {
				if (delete_result == 1) {
					alert("삭제 성공!");
					location.replace("/onm/store_ingredient_form.onm")
				} else if (delete_result == -1) {
					alert("게시물이 삭제되어 수정할 수 없습니다!");
					location.replace("/onm/store_ingredient_form.onm")
				} else if (delete_result == -2) {
					alert("비밀번호가 잘못 입력 되었습니다!");
				} else if (delete_result == 0) {

					alert(dd);
				} else {
					alert("서버쪽 DB 연동 실패!");
				}
			} //,success : function(upDelCnt)

			//서버의 응답을 못 받았을 경우 실행할 익명함수 설정
			,
			error : function() {
				alert("서버와 통신 실패!");
			} //,error : function()

		}); //$.ajax({

	} // checkBoardUpDelForm(upDel)

	$(document).ready(function() {
	});
</script>