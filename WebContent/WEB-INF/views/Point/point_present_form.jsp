<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- javascript에 관한 jsp 수입 -->
<%@ include file="/WEB-INF/resources/Point/point_present_js.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>포인트 선물 페이지</title>
		<!-- 사용자가 포인트 선물 기능 선택 시 보여줄 페이지 -->
	</head>
	<body><center><br><br><br>
		<form method="post" name="point_present" action="/point_present_form.onm">
		
			<input type="hidden" name="p_no" value="${(empty param.p_no)?0:param.p_no}">
			
			<c:if test="${empty param.p_no}">
				<b>[포인트 선물]</b>
			</c:if>
	 
			<br><br>
			<table class="tbcss1" boarder=1 bordercolor=gray cellspacing=0 cellpadding=5 align=center>
	
	 			<tr>
					<th>보내는 아이디
					<td><input type="text" size="10" maxlength="10" name="from_l_id"> 
				<tr>
					<th>받는 아이디
					<td><input type="text" size="10" maxlength="10" name="to_l_id">
				<tr>
					<th>포인트금액
					<td><input type="text" size="10" maxlength="10" name="point">
					
			</table><br>
			
			<input type="button" value="보내기" onClick="checkPointPresentForm();">
			<input type="reset" value="다시작성">
			<input type="button" value="뒤로가기" onClick="location.replace('/onm/point_record_form.onm')">
		</form>
	</body>
</html>