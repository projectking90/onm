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
		<title>메뉴 상세보기 페이지</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/Store/menu_detail_form.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/Store/menu_detail_form.js" type="text/javascript"></script>
		<!-- 검색된 메뉴 선택 시 보여줄 페이지, 선택한 메뉴 상세보기 구현 -->
	</head>
	<body><center><br><br><br>
		<c:if test="${menuDTO.is_del eq 'T'}">
			삭제된 메뉴입니다.
			<script>
			location.replace("/onm/store_menu.onm");
			</script>
		</c:if>
		<form method="post" name="MenuDetailForm" class="MenuDetailForm" action="">
			<input type="hidden" name="m_no" value="${menuDTO.m_no}">
			<c:if test="${menuDTO.is_del eq 'F'}">
			<b>[메뉴 상세보기]</b>
			<!------------------------------------------------------->
			<table><tr height=10><td></table>
			<!----------------------------------------------------------------------->
			<table class="tbcss1" width="800" boarder=1 bordercolor="#DDDDDD" cellspacing=0 cellpadding="5" align="center">
				<tr align=center>
					<th bgcolor="${headerColor}" width=100>메뉴번호
					<td width=150 bgcolor="${oddTrColor}">${menuDTO.m_no}
					<th bgcolor="${headerColor}" width=100>대분류
					<td width=150 bgcolor="${oddTrColor}">${menuDTO.ma_code}
					<th bgcolor="${headerColor}" width=100>소분류
					<td width=150 bgcolor="${oddTrColor}">${menuDTO.mb_code}
				<tr align=center>
					<th bgcolor="${headerColor}" width=100>메뉴이름
					<td width=150 bgcolor="${oddTrColor}">${menuDTO.m_name}
					<th bgcolor="${headerColor}" width=100>가격
					<td width=150 colspan=3 bgcolor="${oddTrColor}">${menuDTO.price}
				<tr>
					<th bgcolor="${headerColor}">설명
					<td width=150 colspan=5 bgcolor="${oddTrColor}">
					<textarea name="content" rows="13" cols="45" style="border:0; resize:none;" readonly>${menuDTO.m_comment}</textarea>
			</table>
			<!------------------------------------------------------->
			<table><tr height=10><td></table>
			<!------------------------------------------------------->
			<input type="button" value="수정/삭제" onClick="goMenuUpDelForm();">&nbsp;
	 		</c:if>
			<input type="button" value="글 목록보기" onClick="location.replace('/onm/store_menu_form.onm')">
		</form>
		
		
		<!--***********************************************************  -->
		<!-- 수정/삭제 화면으로 이동하기 위한 form 태그 선언 -->
	 	<!--***********************************************************  -->
		<form name="menuUpDelForm" method="post" action="/onm/store_menu_updel_form.onm">
			<input type="hidden" name="m_no" class="m_no" value="${param.m_no}">
		</form>
		
	</body>
</html>