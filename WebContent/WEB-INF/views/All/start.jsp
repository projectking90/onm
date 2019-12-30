<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- javascript 관련 jsp 수입 -->
<%@ include file="/WEB-INF/resources/All/start_js.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Example Start</title>
		<!-- 프로젝트 시작 시 보여줄 페이지 -->
		<%
			logger.info(this.getClass() + " 시작");
		%>
	</head>
	<body><center><br><br><br>
		<form name="user_form">
			<input type="button" class="cusmoter" value="고객">
			<input type="button" class="company" value="기업"><br><br><br>
			당신의 brunch를 입력하세요 : <input type="text" name="brunch">
		</form>
<%-- 		
		<form:form name="addr_form" commandName="addr">
			<form:select path="city">
				<form:options items="${addr.cityList}" itemLabel="city_name" itemValue="city_name"></form:options>
			</form:select>
			<form:select path="gu">
				<form:options items="${addr.guList}" itemLabel="gu_name" itemValue="gu_name"></form:options>
			</form:select>
			<form:select path="dong">
				<form:options items="${addr.dongList}" itemLabel="dong_name" itemValue="dong_name"></form:options>
			</form:select>
		</form:form>
--%>
	</body>
</html>