<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- css에 관련된 jsp 파일 수입 -->
<%@ include file="/WEB-INF/resources/Store/ingredient_updel_css.jsp"%>
<!DOCTYPE html>

<!-- 식자재 수정/삭제에 관한 javascript -->
<script>
	$(document).ready(function() {
		$('[name=ia_code]').val("1");
		$('[name=ib_code]').val("1");
		$('[name=s_no]').val("1");
		$('[name=num]').val("1");
		$('[name=i_name]').val("1");
		$('[name=i_size]').val("1");
		$('[name=price]').val("1");
		$('[name=io_code]').val("1");

	});

	// [식자재 등록 화면] 유효성 체크 함수
	function checkIngredientInsertForm() {
		// -------------------------------- 
		if (confirm("정말 저장하시겠습니까?") == false) {
			return;
		}

		// 현재 화면에서 페이지 이동 없이 서버쪽 /z_spring/boardRegProc.do 을 호출하여
		// 게시판 글을 입력하고 [게시판 입력 행 적용 개수]를 받기
		$.ajax({
			// 접속할 서버쪽 URL 주소
			url : "/onm/store_ingredient_insert.onm"

			// 전송 방법
			,
			type : "post"

			// 서버로 보낼 파라미터명과 파라미터값
			,
			data : $("[name=ingredient_insert]").serialize()

			// 서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정
			,
			success : function(ingredientCnt) {

				if ($("[name=ingredient_insert] [name=i_no]")) {
					if (ingredientCnt == 1) {
						alert("등록 성공!");
						location.replace("/onm/store_ingredient_form.onm");
					}

					// [게시판 새 글 입력 행 적용 개수]가 1개가 아니면 경고하기
					else {
						alert("등록 실패! 관리자에게 문의 바람.");
					}
				}
			}

			// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
			,
			error : function() {
				alert("서버 접속 실패");
			}
		});
	}

	function checkIngUpDelForm() {

		if (is_empty("[name=ia_code]")) { //만약 이름이 공백 또는 길이가 없으면 
			alert("이름을 입력해주세요."); // 경고창 띄우고
			$("[name=ia_code]").focus(); // 커서 되돌리기 
			return;

		}
		if (is_empty("[name=ib_code]")) { //만약 제목이 공백 또는 길이가 없으면 
			alert("제목을 입력해주세요."); // 경고창 띄우고
			$("[name=ib_code]").focus(); // 커서 되돌리기
			return;

		}
		if (is_empty("[name=s_no]")) { //만약 이메일이 공백 또는 길이가 없으면 
			alert("이메일을 입력해주세요."); // 경고창 띄우고
			$("[name=s_no]").focus(); // 커서 되돌리기
			return;

		}
		if (is_empty("[name=num]")) { //만약 내용이 공백 또는 길이가 없으면 
			alert("내용을 입력해주세요."); // 경고창 띄우고
			$("[name=num]").focus(); // 커서 되돌리기
			return;

		}
		if (is_empty("[name=i_name]")) { //만약 비밀번호가 공백 또는 길이가 없으면 
			alert("비밀번호를 입력해주세요."); // 경고창 띄우고
			$("[name=i_name]").focus(); // 커서 되돌리기
			return;

		}
		if (is_empty("[name=i_size]")) { //만약 비밀번호가 공백 또는 길이가 없으면 
			alert("비밀번호를 입력해주세요."); // 경고창 띄우고
			$("[name=i_size]").focus(); // 커서 되돌리기
			return;

		}
		if (is_empty("[name=price]")) { //만약 비밀번호가 공백 또는 길이가 없으면 
			alert("비밀번호를 입력해주세요."); // 경고창 띄우고
			$("[name=price]").focus(); // 커서 되돌리기
			return;

		}
		if (is_empty("[name=i_comment]")) { //만약 비밀번호가 공백 또는 길이가 없으면 
			alert("비밀번호를 입력해주세요."); // 경고창 띄우고
			$("[name=i_comment]").focus(); // 커서 되돌리기
			return;

		}

		if (confirm("정말 수정하시겠습니까?") == false) {
			return;
		}

		//else if(upDel=='up')
		//=============================================================================
		// 현재 화면에서 페이지 이동 없이 서버쪽 "${ctRoot}/boardUpDelProc.do" 를 호출하여
		// [게시판 수정 또는 삭제 적용 개수]를 받는다
		//=============================================================================
		alert($('[name=updateStoreIngredient]').serialize());

		$.ajax({
			// 접속할 서버쪽 URL 주소 설정
			url : "/onm/store_ingredient_update.onm"
			// 전송 방법 설정
			,
			type : "post"
			// 서버로 보낼 파라미터명과 파라미터값을 설정
			,
			data : $('[name=updateStoreIngredient]').serialize()

			//서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정
			// 매개변수 upDelCnt 에는 [게시판 수정 또는 삭제 적용 개수]가 들어온다.
			,
			success : function(update_result) {
				if (update_result == 1) {
					alert("수정 성공!");
					location.replace("/onm/store_ingredient_form.onm")
				} else if (update_result == -1) {
					alert("게시물이 삭제되어 수정할 수 없습니다!");
					location.replace("/onm/store_ingredient_form.onm")
				} else if (update_result == -2) {
					alert("비밀번호가 잘못 입력 되었습니다!");
				} else if (update_result == 0) {

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
</script>