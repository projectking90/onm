<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- JSP 기술의 한 종류인 Include Directive를 이용하여 common.jsp 파일 내의 소스를 삽입 -->
<%@ include file="/WEB-INF/views/All/common.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>식자재 추가 페이지</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/Store/ingredient_insert_form.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/Store/ingredient_insert_form.js" type="text/javascript"></script>
		<!-- 식자재 추가 기능 선택 시 보여줄 페이지, 메뉴 추가 기능 구현 -->
		
		
		
		
		
		
		
		
		
		
		
		
		<script>
		
		
		$(document).ready(function(){
			
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
		function checkIngredientInsertForm(){
			
			// -------------------------------- 
			if(confirm("정말 저장하시겠습니까?")==false){return;}
			
			// 현재 화면에서 페이지 이동 없이 서버쪽 /z_spring/boardRegProc.do 을 호출하여
			// 게시판 글을 입력하고 [게시판 입력 행 적용 개수]를 받기
 			$.ajax({
				// 접속할 서버쪽 URL 주소
				url : "/onm/store_ingredient_insert.onm"
				
				// 전송 방법
				, type : "post"
				
				// 서버로 보낼 파라미터명과 파라미터값
				, data : $("[name=ingredient_insert]").serialize()
				
				// 서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정
				, success : function(ingredientCnt){											
					
						if($("[name=ingredient_insert] [name=i_no]")){
							if(ingredientCnt==1){
								alert("등록 성공!");
								location.replace("/onm/store_ingredient_form.onm");
							}
							
							// [게시판 새 글 입력 행 적용 개수]가 1개가 아니면 경고하기
							else{ alert("등록 실패! 관리자에게 문의 바람."); }
						}
				}
						
				// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
				, error : function(){ alert("서버 접속 실패"); }
			});
		}
		
		
		</script>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</head>
	<body><center><br><br><br>
	
	
	
	
	
	<form method="post" name="ingredient_insert" action="/onm/store_ingredient_insert.onm">
	
		<input type="hidden" name="i_no" value="${(empty param.i_no)?0:param.i_no}">
		<c:if test="${empty param.i_no}">
			<b>[식자재 등록]</b>
		</c:if>
 
		<br><br>
		<table class="tbcss1" boarder=1 bordercolor=gray cellspacing=0 cellpadding=5 align=center>

<!-- 			<tr>
				<th>식자재 번호
				<td><input type="text" size="10" maxlength="10" name="i_no"> 
-->
			<tr>
				<th>대분류
				<td><input type="text" size="10" maxlength="10" name="ia_code">
			<tr>
				<th>소분류
				<td><input type="text" size="10" maxlength="10" name="ib_code">
			<tr>
				<th>가게 번호
				<td><input type="text" size="10" maxlength="10" name="s_no">
			<tr>
				<th>상품코드
				<td><input type="text" size="10" maxlength="10" name="num">
			<tr>
				<th>상품명
				<td><input type="text" size="10" maxlength="10" name="i_name">
			<tr>
				<th>규격
				<td><input type="text" size="10" maxlength="10" name="i_size">
			<tr>
				<th>매입가격
				<td><input type="text" size="10" maxlength="10" name="price">
			<tr>
				<th>설명
				<td><textarea name="i_comment" rows="13" cols="30" maxlength="500" style="resize:none;"></textarea>
<!-- 		<tr>
				<th>등록일
				<td><input type="text" size="10" maxlength="10" name="reg_date"> 
-->
			<tr>
				<th>원산지
				<td><input type="text" size="10" maxlength="10" name="io_code">
		</table><br>
		
		<input type="button" value="저장" onClick="checkIngredientInsertForm()">
		<input type="reset" value="다시작성">
		<input type="button" value="목록보기" onClick="location.replace('/onm/store_ingredient_form.onm')">
	</form>
	

		
	</body>
</html>