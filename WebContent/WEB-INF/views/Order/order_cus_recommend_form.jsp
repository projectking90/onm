<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- JSP 기술의 한 종류인 Include Directive를 이용하여 common.jsp 파일 내의 소스를 삽입 -->
<%@ include file="/WEB-INF/views/All/common.jsp" %>
<!-- CSS파일 수입 -->
<%@ include file="/WEB-INF/resources/Order/order_cus_recommend_css.jsp" %>
<!-- JQuery 라이브러리 파일 수입 -->
<%@ include file="/WEB-INF/resources/Order/order_cus_recommend_js.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>주문하기(고객) 추천주문 페이지</title>
		<!-- 고객이 추천 주문하기 기능 선택 시 보여줄 페이지 -->
	</head>
	<body>
		
	</body>
</html>