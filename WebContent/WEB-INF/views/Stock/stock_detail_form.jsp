<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- javascript에 관한 jsp 수입 -->
<%@ include file="/WEB-INF/resources/Stock/stock_detail_form_js.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>재고관리 상세보기 페이지</title>
		<!-- 가게가 재고 중 상세보기를 원하는 재고 선택 시  페이지 -->
		
		<script>
			function go_stock_updel_form(){
				document.stock_updel_form.submit();
			}
			function go_back_btn(){
				location.replace("/onm/stock_form.onm");
			}
		</script>
	</head>
	<!-- s_id 포함해야 함 -->
	<body><center>
	<form class="stock_detail_form" name="stock_detail_form" method="post" action="/onm/stock_detail_form.onm">
		<input type="hidden" name="s_id" value="${s_id}">
		<br>
		<br>
		<br>
		[상세 보기]
		<br>
		<br>
		<table class="tbcss1" width="500" border=1 bordercolor="#000000" cellpadding=5 align=center>
			<tr align=center>
				<th bgcolor="gray" width=60>식자재 상품명
				<td width=150 colspan=4>${i_name}
			<tr align=center>
				<th bgcolor="gray" width=60>총 수량
				<td width=150 colspan=4>${cnt}
			<tr align=center>
				<th bgcolor="gray" width=60>재고 상태
				<td width=150 colspan=4>${recent_st_state}
			<%-- 
			<tr align=center>
				<th bgcolor="gray" width=60>재고 상태
				<td width=150>${stockDTO.st_state}
			--%>
			<tr align=center>
				<th bgcolor="gray" width=60>입출력 번호
				<th bgcolor="gray" width=60>입출고 상태
				<th bgcolor="gray" width=60>수량
				<th bgcolor="gray" width=60>가격
				<th bgcolor="gray" width=60>등록일
				
			<c:forEach items="${stock_detail_list}" var="stock_detail" varStatus="loopTagStatus">
				<tr align=center>	
					<td>${stock_detail_list_cnt-loopTagStatus.index}
					<td>${stock_detail.sr_state}
					<td>${stock_detail.quantity}
					<td>${stock_detail.price}
					<td>${stock_detail.st_reg_date}
			</c:forEach>
		</table>

		<br>
		<table align=center>
			<tr height=3>
				<td>
					<input type="button" value="수정/삭제" onClick="go_stock_updel_form();">&nbsp;
					<input type="button" value="글 목록 보기" onClick="go_back_btn();">
		</table>
	</form>
	
	
	<form name="stock_updel_form" method="post" action="/onm/stock_updel_form.onm">
		<!-- 게시판 상세보기 화면을 구성하는 글의 고유번호를 hidden 태그에 저장 -->
		<!-- 수정/삭제를 하려면 현재 글의 고유번호를 알아야하기 때문	 -->
		<input type="hidden" name="i_name" value="${param.i_name}">
		<input type="hidden" name="keyword" value="${param.keyword}">
		<input type="hidden" name="select_page_no" value="${param.select_page_no}">	
		<input type="hidden" name="row_cnt_per_page" value="${param.row_cnt_per_page}">			
	</form>
</body>
</html>