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
		<title>주문확인(고객) 페이지</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/Order/order_cus_check_form.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/Order/order_cus_check_form.js" type="text/javascript"></script>
		<!-- 고객이 주문확인 기능 선택 시 보여줄 첫 페이지 -->
		<script>
		function goOrderDetail(o_no){
			var str = "o_no="+o_no;
			location.replace("/onm/store_menu_detail_form.onm?"+str );
		}
		</script>
	</head>
	<body><center><br><br><br>
	<form  method="post" name="orderListForm" action="/onm/order_cus.onm">
				<table class="orderTable tbcss2" border=0 cellspacing=0 cellpadding=5 width=700>
					<tr bgcolor="${headerColor}"><th>주문<th>가게명<th>분류<th>메뉴이름<th>가격<th>설명
						<c:forEach items="${getOrderList}" var="order" varStatus="loopTagStatus">
							<c:if test ="${order.is_del eq 'F'}">
							<tr style="cursor:pointer" onClick="goOrderDetail(${order.o_no});">
									<td align=center><input type="checkbox" name="c_id" class="c_id" value="${sessionScope.c_id}">
													<input type="hidden" name="m_no" value="${order.m_no}">
									<td align=center>${order.s_no}
													<input type="hidden" name="s_no" value="${order.s_no}">
									<td align=center>${order.mb_code}
									<td align=center>${order.m_name}
									<td align=center>${order.price}
									<td align=center>${order.m_comment}
							</c:if>
						</c:forEach>
				</table><br>
				상세주소 : <input type="text" name="location">&nbsp;&nbsp;&nbsp;
				전화번호 : <input type="text" name="o_phone"><br><br>
				요청사항 : <input type="text" name="request" size="40" maxlength="30">&nbsp;&nbsp;&nbsp;
				픽업시간 : <select name="pick_time">
								<option value="5">5분</option>
								<option value="10">10분</option>
								<option value="15">15분</option>
								<option value="20">20분</option>
							</select>
							<br><br>
				<input type="button" name="goStoreList" value="가게목록보기" onClick="location.replace('/onm/order_cus_form.onm')">
				<input type="button" name="order" value="주문하기" onClick="goOrder();">
			</form>
		
	</center></body>
</html>