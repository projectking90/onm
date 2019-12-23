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
		<title>메뉴 수정/삭제 페이지</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/Store/menu_updel_form.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/Store/menu_updel_form.js" type="text/javascript"></script>
		<!-- 메뉴 수정/삭제 기능 선택 시 보여줄 페이지, 메뉴 수정, 삭제 기능 구현 -->
	</head>
	<body>
	<center><br><br><br>	
		<table><tr height=4><td></table>
		
		<form:form  method="post" name="menuUpForm" commandName="menuDTO" action="/onm/store_menu_update_proc.onm">
	
			<b>[메뉴 수정/삭제]</b>
			<!----------------------------------------------------------------------->
			<table class="tbcss1" width="500" boarder=1 bordercolor="#DDDDDD" cellspacing=0 cellpadding="5" align="center">
				<tr>
					<th bgcolor="${headerColor}">메뉴이름
					<td bgcolor="${oddTrColor}"><form:input path="m_name" className="m_name"/>
				<tr>
					<th bgcolor="${headerColor}">대분류
					<td bgcolor="${oddTrColor}"><form:input path="ma_code" className="ma_code"/>
				<tr>
					<th bgcolor="${headerColor}">소분류
					<td bgcolor="${oddTrColor}"><form:input path="mb_code" className="mb_code"/>
				<tr>
					<th bgcolor="${headerColor}">설명
					<td bgcolor="${oddTrColor}"><form:textarea path="m_comment" className="m_comment" rows="13" cols="40" style="resize:none;"/>
				<tr>
					<th bgcolor="${headerColor}">가격
					<td bgcolor="${oddTrColor}"><form:input path="price" className="price"/>	
			</table>
			<!------------------------------------------------>
			<table><tr height=4><td></table>
			<!------------------------------------------------>
			<input type="hidden" name="m_no" value="${menuDTO.m_no}">
			<!------------------------------------------------>
			<input type="button" value="수정" onClick="goMenuUpdateForm();">&nbsp;
			<input type="button" value="삭제" onClick="goMenuDeleteForm();">&nbsp;		
			<input type="button" value="목록보기" onClick="location.replace('/onm/store_menu.onm')">
		</form:form>
		
		
		<form name="menuDelForm" method="post" action="/onm/store_menu_delete.onm">
			<input type="text" name="m_no" class="m_no" value="${param.m_no}">
		</form>
	</center>
	</body>
</html>