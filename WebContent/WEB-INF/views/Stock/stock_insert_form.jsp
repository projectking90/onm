<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- javascript에 관한 jsp 수입 -->
<%-- <%@ include file="/WEB-INF/resources/All/common.js"%> 수입이 되지 않음 --%>
<%@ include file="/WEB-INF/resources/Stock/stock_insert_form_js.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>재고관리 추가 페이지</title>
		<script>
			function go_stock_insert_btn(){
				alert($("[name=stock_insert_form]").serialize());
				$.ajax({
					url : "/onm/stock_insert.onm"
					,type : "post"
					,data : $("[name=stock_insert_form]").serialize()
					,success : function(stock_insert_result){
						alert(stock_insert_result);
						if(stock_insert_result==1){
							alert("재고 등록 성공하였습니다.");
							location.replace("/onm/stock_form.onm");
						}else{
							alert("재고 등록 실패하였습니다. 관리자에게 문의하시기 바랍니다.");
						}
					}
					,error : function(){
						alert("서버 접속을 실패하였습니다.");
					}

				});
			}

			function go_back_btn(){
				location.replace("/onm/stock_form.onm");
			}
		</script>
	</head>
	<body>
		<form method="post" name="stock_insert_form" action="/onm/stock_insert_form.onm">
			<table border=1>
			<!-- 재고 상태, 입출력 상태 select db 끌고오지 말 것 -->
				<tr>
					<td align=center><b>식자재 이름</b></td>
					<td align=center>
						<!-- 식자재 이름(value:식자재 번호) : 식자재 테이블에 있는 것들 다 끌고 오기 -->
						<select name="i_no">
							<c:forEach items="${ingredient_list}" var="ingredient" varStatus="loopTagStatus">
								<option value="${ingredient.i_no}">${ingredient.i_name}
							</c:forEach>
						</select>
					</td>
				<tr>
					<td align=center><b>수량</b></td>	
					<td align=center><b><input type="text" name="quantity"></b>
					
				<tr>
					<td align=center><b>재고 상태</b></td>
					<td align=center>
						<select name="st_state">
							<option value="t">사용 가능
							<%--<option value="f">사용 불가능--%>
						</select>
					</td>
				<tr>
					<td align=center><b>입출고 상태</b></td>
					<td align=center>
						<select name="sr_state">
							<option value="i">입고
							<option value="o">출고
						</select>
					</td>
				<tr>
					<td align=center><b>가격</b></td>
					<td align=center><input type="text" name="price"></td>
			</table>
			<br>
			<input type="button" value="재고 등록" onClick="go_stock_insert_btn()">
			<input type="button" value="목록 보기" onClick="go_back_btn()">
		</form>
	</body>
</html>