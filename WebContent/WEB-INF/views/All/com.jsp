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
		<title>Company Main View</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/All/start.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/All/start.js" type="text/javascript"></script>
		<!-- 검색된 식자재 선택 시 보여줄 페이지, 선택한 메뉴 상세보기 구현 -->
		<%
			logger.info(this.getClass() + " 시작");
		%>
	</head>
	<body>
		<input type="button" value="메뉴" onClick="location.replace('${cr}/store_menu_form.onm')">
		<input type="button" value="메뉴 상세보기" onClick="location.replace('${cr}/store_menu_detail_form.onm')">
		<input type="button" value="메뉴 등록" onClick="location.replace('${cr}/store_menu_insert_form.onm')">
		<input type="button" value="메뉴 수정/삭제" onClick="location.replace('${cr}/store_menu_updel_form.onm')"><br><br>
		<input type="button" value="식자재" onClick="location.replace('${cr}/store_ingredient_form.onm')">
		<input type="button" value="식자재 상세보기" onClick="location.replace('${cr}/store_ingredient_detail_form.onm')">
		<input type="button" value="식자재 등록" onClick="location.replace('${cr}/store_ingredient_insert_form.onm')">
		<input type="button" value="식자재 수정/삭제" onClick="location.replace('${cr}/store_ingredient_updel_form.onm')"><br><br>
		<input type="button" value="가게 정보" onClick="location.replace('${cr}/store_kind_form.onm')">
		<input type="button" value="가게 정보 등록" onClick="location.replace('${cr}/store_kind_insert_form.onm')">
		<input type="button" value="가게 정보 수정" onClick="location.replace('${cr}/store_kind_up_form.onm')"><br>
		----------------------------------------------------------------<br>
		<input type="button" value="재고관리" onClick="location.replace('${cr}/stock_form.onm')">
	</body>
</html>