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
		<title>업종 수정 페이지</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/Store/store_kind_up_form.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/Store/store_kind_up_form.js" type="text/javascript"></script>
		<!-- 업종 수정 기능 선택 시 보여줄 페이지, 업종 수정 기능 구현 -->
		<script>
		</script>
	</head>
	<body>
	<center><br><br><br>	
	<table><tr height=4><td></table>
	<form:form method="post" name="store_kind_up_form" commandName="store_kindDTO" action="/onm/store_kind_update_proc.onm">

      <b>[ 가게수정 ]</b><br>
      <table class="tbcss1" border=1 bordercolor=gray cellspacing=0 cellpadding=5 align=center>
			<!----------------------------------------------------------------------->
			<table class="tbcss1" width="500" boarder=1 bordercolor="#DDDDDD" cellspacing=0 cellpadding="5" align="center">
				<form:form name="StoreKindCodeForm" commandName="codestorekindDTO">
				<tr>
					<th bgcolor="${headerColor}">대분류
					<td bgcolor="${oddTrColor}"> <form:select path="ska_code">
													<form:options items="${codestorekindDTO.ska_nameList}" itemLabel="ska_name" itemValue="ska_name"></form:options>
												</form:select>
												<%-- <form:input path="ska_code" className="ska_code"/> --%>
				<tr>
					<th bgcolor="${headerColor}">소분류
					<td bgcolor="${oddTrColor}"> <form:select path="skb_code">
													<form:options items="${codestorekindDTO.skb_nameList}" itemLabel="skb_name" itemValue="skb_name"></form:options>
												</form:select>
												<%-- <form:input path="skb_code" className="skb_code"/> --%>
				</form:form>
				<tr>
					<th bgcolor="${headerColor}">가게번호
					<td bgcolor="${oddTrColor}"><form:input path="s_no" className="s_no"/>
				<tr>
					<th bgcolor="${headerColor}">매장명
					<td bgcolor="${oddTrColor}"><form:input path="sk_name" className="sk_name"/>
				<tr>
					<th bgcolor="${headerColor}">주소코드
					<td bgcolor="${oddTrColor}"><form:input path="addr_code" className="addr_code"/>
				<tr>
					<th bgcolor="${headerColor}">상세주소
					<td bgcolor="${oddTrColor}"><form:input path="location" className="location"/>
				<tr>
					<th bgcolor="${headerColor}">매장전화번호
					<td bgcolor="${oddTrColor}"><form:input path="sk_phone" className="sk_phone"/>
			</table>
			<!------------------------------------------------>
			<table><tr height=4><td></table>
			<!------------------------------------------------>
			<input type="hidden" name="s_id" value="${StoreKindDTO.s_id}">
			<!------------------------------------------------>
			<input type="button" value="수정" onClick="goStoreKindUpForm();">&nbsp;
			<input type="button" value="목록보기" onClick="location.replace('/onm/store_kind_form.onm')">
		</form:form>
	</center>
	</body>
</html>