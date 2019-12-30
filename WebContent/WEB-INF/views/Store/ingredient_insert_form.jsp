<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- javascript에 관한 jsp 수입 -->
<%@ include file="/WEB-INF/resources/Store/ingredient_insert_js.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>식자재 추가 페이지</title>
		<!-- 식자재 추가 기능 선택 시 보여줄 페이지, 메뉴 추가 기능 구현 -->
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
					<td><textarea name="i_comment" rows="10" cols="30" maxlength="500" style="resize:none;"></textarea>
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