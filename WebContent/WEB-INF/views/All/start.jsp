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
		<title>Example Start</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/All/start.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/All/start.js" type="text/javascript"></script>
		<!-- 검색된 식자재 선택 시 보여줄 페이지, 선택한 메뉴 상세보기 구현 -->
	</head>
	<body><center><br><br><br>
		<form name="user_form">
			<input type="button" class="cusmoter" value="고객">
			<input type="button" class="company" value="기업"><br><br><br>
			당신의 brunch를 입력하세요 : <input type="text" name="brunch">
		</form>
	</body>
</html>