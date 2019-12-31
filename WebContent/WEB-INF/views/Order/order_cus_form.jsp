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
		<title>주문하기(고객) 페이지</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/Order/order_cus_form.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/Order/order_cus_form.js" type="text/javascript"></script>
		
		<script>

		$(document).ready(function(){
			inputData("[name=customerOderForm] .orderLocation","${store_searchDTO.orderLocation}");
		});
		

		function goSearch(){
			if(is_empty("[name=customerOderForm] .orderLocation") ){
				$("[name=customerOderForm] .orderLocation").val("");
			}
			removeSpace("[name=customerOderForm] .orderLocation");
			
			document.customerOderForm.submit();
		}
		
		function goStoreDetailForm(s_no){
			var str = "s_no="+s_no
			alert(str);
			location.replace("/onm/order_cus_detail_form.onm?"+str);
		}

		function goOrderCheck() {
/* 				var str = "c_id="+c_id
			location.replace('/onm/order_cus_check_form.onm?'+str); */
			document.orderCheck.submit();
		}
		</script>
	</head>
		<!-- 고객이 주문하기 기능 선택 시 보여줄 첫 페이지 -->
	<body><center><br><br>
		<div>${sessionScope.c_id} 님 환영합니다</div>
		<div style="width:500">
				<b>[고객 주문]</b>

				<div style="height:6"></div>
				<form name="orderCheck" method="post" action="/onm/order_cus_check_form.onm">
				<div style="float:right">				
					<input type="button" class="recommandOrderBtn" value="추천">
					<input type="button" class="orderListBtn" value="주문표" onClick="goOrderCheck();">
					<input type="hidden" name="c_id" value="${sessionScope.c_id}">
				</div>
				</form>
			<form name="customerOderForm" method="post" action="/onm/order_cus_form.onm">
				<div style="height:6"></div><br>

				<input type="button" class="currentLoctionBtn" value="⌖">
				<input type="text" name="orderLocation" class="orderLocation" size="30">
				<input type="button" class="searchLocationBtn" value="검색" onClick="goSearch();">
			</form>

				<div style="height:6"></div>
				
				
			<table><tr height=10><td></table>
			<form name="storeListForm" method="post" action="/onm/order_cus_detail_form.onm">
				<table class="storeTable" border=0 cellspacing=0 cellpadding=5 width=700 align="center">
					<tr align="center">
					
					<c:forEach items="${getStoreList}" var="store" varStatus="loopTagStatus">
						<div style="cursor:pointer" onClick="goStoreDetailForm(${store.s_no});">
							자주가는 매장<br><input type="button" name="s_name" value="${store.s_name}">
							<input type="hidden" name="s_no" class="s_no" value="${store.s_no}">
						</div>
					</c:forEach>
				</table>
			</form>
				
				<div style="height:6"></div><br>

				<form:form  method="post" name="storeNearListdForm" commandName="getStoreList" action="">
				<div style="height:6">
					<input type="button" class="favouriteOrderBtn_1" value="주변매장1" onClick="">&nbsp;
					<input type="button" class="favouriteOrderBtn_2" value="주변매장2" onClick="">&nbsp;
					<input type="button" class="favouriteOrderBtn_3" value="주변매장3" onClick=""><br><br>
					<input type="button" class="favouriteOrderBtn_4" value="주변매장4" onClick="">&nbsp;
					<input type="button" class="favouriteOrderBtn_5" value="주변매장5" onClick="">&nbsp;
					<input type="button" class="favouriteOrderBtn_6" value="주변매장6" onClick=""><br><br>
					<input type="button" class="favouriteOrderBtn_7" value="주변매장7" onClick="">&nbsp;
					<input type="button" class="favouriteOrderBtn_8" value="주변매장8" onClick="">&nbsp;
					<input type="button" class="favouriteOrderBtn_9" value="주변매장9" onClick="">
				</div>
				</form:form>
		</div>
		<form method="post" name="goDetail" action="/onm/order_cus_detail_form.onm">
		<input type="hidden" name="s_no" class="s_no" value="${param.s_no}">
		</form>
		
	</body>
</html>