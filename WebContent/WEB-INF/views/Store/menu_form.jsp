<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/All/common.jsp" %>
<!DOCTYPE html>
<html>
	<head>
	<script>
		function goMenuUpdelForm(m_no){
			var str = "m_no="+m_no;
			location.replace("/onm/store_menu_detail_form.onm?"+str );
		}
	</script>
		<meta charset="UTF-8">
		<title>메뉴 리스트 페이지</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/Store/menu_form.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/Store/menu_form.js" type="text/javascript"></script>
		<!-- 메뉴 기능 선택 시 보여줄 첫 페이지 전체 검색, 검색 조건에 의한 검색을 보여줄 페이지 -->
	</head>
<body><center>
	<form name="menuListForm" method="get" action="/onm/store_menucontent.onm">
		<table><tr height=10><td></table>
		<table>
			<tr>
				<td><input type="text" class="keyword">
		</table>
		<table><tr height=10><td></table>
		<table class="menuTable tbcss2" border=0 cellspacing=0 cellpadding=5 width=700>
			<tr bgcolor="${headerColor}"><th>메뉴번호<th>대분류<th>소분류<th>가게명<th>메뉴이름<th>가격<th>설명<th>등록일

				<c:forEach items="${menu_list}" var="menu" varStatus="loopTagStatus">
					<c:if test ="${menu.is_del eq 'F'}">
					<tr style="cursor:pointer"
						 onClick="goMenuUpdelForm(${menu.m_no});">
						<td align=center>${menu.m_no}
							<td align=center>${menu.ma_code}
							<td align=center>${menu.mb_code}
							<td align=center>${menu.s_no}
							<td align=center>${menu.m_name}
							<td align=center>${menu.price}
							<td align=center>${menu.m_comment}
							<td align=center>${menu.reg_date}
					</c:if>
				</c:forEach>

		</table><br>
	</form>
</center></body>
</html>