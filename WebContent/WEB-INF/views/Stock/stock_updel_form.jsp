<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- javascript에 관한 jsp 수입 -->
<%@ include file="/WEB-INF/resources/Stock/stock_updel_form_js.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>재고관리 수정/삭제 페이지</title>
		<!-- 가게가 재고 중 상세보기를 원하는 재고 선택 시  페이지 -->
		
		<script>

			function stock_update_btn(){
				if(confirm("정말 수정하시겠습니까?")==false){return;}

				alert($('[name=stock_updel_form]').serialize());
				return;

			}
			function stock_delete_btn(){
				if(confirm("정말 삭제하시겠습니까?")==false){return;}

				alert($('[name=stock_updel_form]').serialize());
				return;
				$.ajax({
					url : "/onm/stock_delete.onm"
					//---------------------------------------------------------------------------
					// 전송 방법 설정
					//---------------------------------------------------------------------------
					, type : "post"
					//---------------------------------------------------------------------------
					// 서버로 보낼 파라미터명과 파라미터값을 설정
					//---------------------------------------------------------------------------
					, data : $('[name=stock_updel_form]').serialize()
					//---------------------------------------------------------------------------
					// 서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정
					// 매개변수 upDelCnt에는 [게시판 수정 또는 삭제 적용 개수]가 들어온다.
					//---------------------------------------------------------------------------
					,success:function(updel_cnt){
						if(updel_cnt==1){
							alert("삭제 성공!");
						}else if(updel_cnt==-1){
							alert("이미 삭제된 게시물입니다!");
						}else{
							alert("서버 쪽 DB연동 실패!");
						}
					}
					//---------------------------------------------------------------------------
					// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
					//---------------------------------------------------------------------------
					,error : function(){
						alert("서버와 통신 실패!");
					}
					
				});
			}
			function go_back_btn(){
				location.replace("/onm/stock_form.onm");
			}
		</script>
	</head>
	<!-- s_id 포함해야 함 -->
	<body><center>
	<form class="stock_updel_form" name="stock_updel_form" method="post" action="/onm/stock_updel_form.onm">
		<%-- <input type="text" name="s_id" value="${sessionScope.s_id}"> --%>
		<br>
		<br>
		<br>
		[수정/삭제]
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
				<td width=150 colspan=4>
				<select name="recent_st_state">
					<option value="${recent_st_state}">${recent_st_state}
					<c:if test="${recent_st_state=='t'}">
						<option value="f">f
					</c:if>
					<c:if test="${recent_st_state=='f'}">
						<option value="t">t
					</c:if>
				</select>
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
					<td><input type="text" name="quantity" size="10" value="${stock_detail.quantity}">
					<td>${stock_detail.price}
					<td>${stock_detail.st_reg_date}
			</c:forEach>
		</table>

		<br>
		<table align=center>
			<tr height=3>
				<td>
					
					<input type="button" value="수정" onClick="stock_update_btn()">
					<input type="button" value="삭제" onClick="stock_delete_btn()">
					<input type="button" value="글 목록 보기" onClick="go_back_btn();">
		</table>
	</form>
</body>
</html>