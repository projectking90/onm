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
		$(document).ready(function(){
			$('[name=row_cnt_per_page]').change(function(){
				goSearch();
			});		
				
			$(".pagingNumber").html(
					getPagingNumber(
						'${menu_list_all_cnt}'					// 검색결과 총 행 개수
						,'${menu_searchDTO.select_page_no}'		// 선택된 현재 페이지 번호
						,'${menu_searchDTO.row_cnt_per_page}'	// 페이지 당 출력행의 개수
						,"10"									// 페이지 당 보여줄 페이지 번호 개수
						,"goSearch();"							// 페이지 번호 클릭 후 실행할 자스 코드	
				)
			);
	
			$('[name=row_cnt_per_page]').val('${menu_searchDTO.row_cnt_per_page}');
			$('[name=select_page_no]').val('${menu_searchDTO.select_page_no}');
			$('[name=keyword]').val('${menu_searchDTO.keyword}');	
		});
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
		<form name="menu_form" method="post" action="/onm/store_menu_form.onm">
			<table class="menuSearch">
				<tr>
					<td>[검  색] : <input type="text" name="keyword" class="keyword">
								<input type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;검색&nbsp;&nbsp;&nbsp;&nbsp;" class="contactSearch" onClick="goSearch();">&nbsp;
								<input type="button" value=" 모두&nbsp;검색 " onClick="goSearchAll();">&nbsp;
								<input type="hidden" name="select_page_no">
								
					</td>
					<td>
						<select name="row_cnt_per_page">
							<option value="10">10
							<option value="20">20
							<option value="30">30
							<option value="40">40
							<option value="50">50
						</select>&nbsp;&nbsp;개의 상품 보기
					</td>
				</tr>
			</table>
			<table border=0 cellspacing=0 cellpadding=5 width=700 >
				<tr bgcolor="#EFEFEF">
					<th>메뉴 번호
					<th>대분류
					<th>소분류
					<th>메뉴
					<th>가격
					<th>메뉴 설명
					<th>등록일
				
				<c:forEach items="${menu_list}" var="menu" varStatus="loopTagStatus">
					<tr style="cursor:pointer" onClick="goBoardContentForm(${menu.m_no});">
						<td align=center>${menu.m_no}
						<td align=center>${menu.ma_code}
						<td align=center>${menu.mb_code}
						<td align=center>${menu.m_name}
						<td align=center>${menu.price}
						<td align=center>${menu.m_comment}
						<td align=center>${menu.reg_date}
				</c:forEach>
			</table>
			
			<table><tr><td align=right><div>상품의 총 개수 : ${menu_list_all_cnt}&nbsp;&nbsp;&nbsp;</div></table>
			<table><tr><td align=center><div>&nbsp;<span class="pagingNumber"></span>&nbsp;</div></table>
			<br><br>
				
			<input type="hidden" name="s_id" class="s_id" value="${s_id}">
		</form>
	</body>
</html>
