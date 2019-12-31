<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- javascript 관련 jsp 수입 -->
<%@ include file="/WEB-INF/resources/Order/order_cus_check_js.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>주문확인(고객) 페이지</title>
		<!-- 고객이 주문확인 기능 선택 시 보여줄 페이지 -->
	</head>
	<body><center><br><br><br>
		<form  method="post" name="orderListForm" action="/onm/order_cus.onm">
			<table class="orderTable tbcss2" border=0 cellspacing=0 cellpadding=5 width=700>
				<tr bgcolor="${headerColor}"><th>주문<th>가게명<th>주문상태<th>주소<th>연락처<th>주문시간<th>픽업시간<th>요청사항
					<c:forEach items="${getOrderList}" var="order" varStatus="loopTagStatus">
						<c:if test ="${order.is_del eq 'F'}">
						<tr style="cursor:pointer" onClick="goOrderDetail(${order.o_no});">
								<td align=center><input type="checkbox" name="c_id" class="c_id" value="${sessionScope.c_id}">
								<td align=center>${order.s_no}
												<input type="hidden" name="s_no" value="${order.s_no}">
								<td align=center>${order.o_state}
								<td align=center>${order.addr_code}${order.location}
								<td align=center>${order.o_phone}
								<td align=center>${order.order_time}
								<td align=center>${order.pick_time}
								<td align=center>${order.request}
						</c:if>
					</c:forEach>
			</table><br>
			<input type="button" name="goStoreList" value="가게목록보기" onClick="location.replace('/onm/order_cus_form.onm')">
			<input type="button" name="order" value="주문취소하기" onClick="goOrderCancle();">
		</form>
	</body>
</html>