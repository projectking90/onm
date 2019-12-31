<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- javascript에 관한 jsp 수입 -->
<%@ include file="/WEB-INF/resources/All/cus_js.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cusmoter Main View</title>
		<!-- 고객이 로그인 성공 시 보여줄 페이지 -->
		<%
			logger.info(this.getClass() + " 시작");
		%>
	</head>
	<body>
		<input type="button" value="주문" onClick="location.replace('${cr}/order_cus_form.onm?c_id=${sessionScope.c_id}')">&nbsp;&nbsp;&nbsp;
		<input type="button" value="주문기록" onClick="location.replace('${cr}/order_record_form.onm?c_id=${sessionScope.c_id}')">&nbsp;&nbsp;&nbsp;
		<input type="button" value="포인트" onClick="location.replace('${cr}/point_record_form.onm?c_id=${sessionScope.c_id}')">&nbsp;&nbsp;&nbsp;
	</body>
</html>