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
      <title>업종 리스트 페이지</title>
      <!-- CSS파일 수입 -->
      <link href="${cr}/resources/Store/store_kind_form.css" rel="stylesheet" type="text/css">
      <!-- JQuery 라이브러리 파일 수입 -->
   </head>
   
   <body><center><br><br><br>
	<body><center><br><br><br>
	<form class="stock_kind_form" name = "store_kind_form" method="post" action="/onm/stock_insert_form.onm">
		<b>[가게정보]</b><br>
   
   <table><tr height=10><td></table>
   
	<table class="StoreKindTable tbcss2" border=1 cellspacing=0 cellpadding=5 width=700>&nbsp;
				<tr align=center>
					<th bgcolor="dbdbdb" width=100>대분류
					<td width=150>${store_kind.ska_code}
					<th bgcolor="dbdbdb" width=100>가게번호
					<td width=150>${store_kind.s_no}
					<th bgcolor="dbdbdb" width=100>매장전화번호
					<td width=150>${store_kind.sk_phone}
				<tr align=center>
					<th bgcolor="dbdbdb" width=100>소분류
					<td width=150>${store_kind.skb_code}
					<th bgcolor="dbdbdb" width=100>매장명
					<td width=150>${store_kind.sk_name}
					<th bgcolor="dbdbdb" width=100>주소코드
					<td width=150>${store_kind.addr_code}

				<tr align=center>
					<th bgcolor="dbdbdb" width=100 >상세주소
					<td colspan=5>${store_kind.location}
			</table>
		<br><br><br><br>
		<form name="store_kind_form" method="post" action="/onm/store_kind_form.onm">
	      	<div style="width:800">
			<input type="button" value="가게 정보 등록" onClick="location.replace('${cr}/store_kind_insert_form.onm?s_id=${sessionScope.s_id}')">&nbsp;
			<input type="button" value="가게 정보 수정" onClick="location.replace('${cr}/store_kind_up_form.onm?s_id=${sessionScope.s_id}')">
	        </div>
		</form>
	
	</form>



	</body>
</html>
