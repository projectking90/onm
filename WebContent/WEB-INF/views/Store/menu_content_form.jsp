<!--***********************************************************  -->
<!--JSP 기술의 한 종류인 [Page Directive]를 이용하여 현 JSP 페이지 처리 방식 선언하기  -->
<!--***********************************************************  -->
	<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML 이고, 이 문서 안의 데이터는 UTF-8 방식으로 인코딩한다 라고 설정함 -->
	<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다 -->
	<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화 할 수 있는 방법이다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/All/common.jsp" %>


<html>
<head>
	<title>메뉴 상세보기</title>
	<script>
	
	function goMenuUpForm(){
		document.menuUpdateForm.submit();
		//document.MenuContentForm.submit();
	}
	// 게시판 수정 화면으로 이동하는 함수 선언
	function goMenuDelForm(){
		// name=boardUpDelForm 을 가진 form 태그의 action 값을 URL로 서버에 접속하라
		if(confirm("정말 삭제하시겠습니까?")==false){return;}
		document.menuDelForm.submit();
	}
	
	</script>
</head>
<body><center><br><br><br>
	<c:if test="${menuDTO.is_del=='T'}">
		삭제된 메뉴입니다.
		<script>
		location.replace("/onm/store_menu.onm");
		</script>
	</c:if>
	<form method="post" name="MenuContentForm" class="MenuContentForm" action="/onm/boardRegForm.do">
		<input type="hidden" name="m_no" value="${menuDTO.m_no}">
		<c:if test="${menuDTO.is_del=='F'}">
		<b>[메뉴 상세보기]</b>
		<br>
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
				<th bgcolor="${headerColor}" width=100>가게이름
				<td width=150 bgcolor="${oddTrColor}">${menuDTO.s_no}
				<th bgcolor="${headerColor}" width=100>메뉴이름
				<td width=150 colspan=3 bgcolor="${oddTrColor}">${menuDTO.m_name}
				<th bgcolor="${headerColor}" width=100>가격
				<td width=150 colspan=3 bgcolor="${oddTrColor}">${menuDTO.price}
			<tr>
				<th bgcolor="${headerColor}">설명
				<td width=150 colspan=3 bgcolor="${oddTrColor}">
				<textarea name="content" rows="13" cols="45" style="border:0; resize:none;" readonly>${menuDTO.m_comment}</textarea>
		</table>
		<!------------------------------------------------------->
		<table><tr height=10><td></table>
		<!------------------------------------------------------->
		<input type="button" value="수정" onClick="goMenuUpForm();">&nbsp;
		<input type="button" value="삭제" onClick="goMenuDelForm();">&nbsp;
 		</c:if>
		<input type="button" value="글 목록보기" onClick="location.replace('/onm/store_menu.onm')">
	</form>
	
	
	<!--***********************************************************  -->
	<!-- 수정/삭제 화면으로 이동하기 위한 form 태그 선언 -->
 	<!--***********************************************************  -->
	<form name="menuUpdateForm" method="post" action="/onm/store_menu_update.onm">
		<!-- 게시판 상세보기 화면을 구성하는 글의 고유번호를 hidden 태그에 저장 -->
		<!-- 수정/삭제를 하려면 현재 글의 고유번호를 알아야하기 때문 -->
		<input type="hidden" name="m_no" class="m_no" value="${param.m_no}">
	</form>
	<form name="menuDelForm" method="post" action="/onm/store_menu_delete.onm">
		<!-- 게시판 상세보기 화면을 구성하는 글의 고유번호를 hidden 태그에 저장 -->
		<!-- 수정/삭제를 하려면 현재 글의 고유번호를 알아야하기 때문 -->
		<input type="text" name="m_no" class="m_no" value="${param.m_no}">
	</form>
	
</body>
</html>
