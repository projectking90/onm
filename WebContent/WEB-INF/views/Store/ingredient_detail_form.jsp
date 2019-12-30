<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- javascript에 관한 jsp 수입 -->
<%@ include file="/WEB-INF/resources/Store/ingredient_detail_js.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>식자재 상세보기 페이지</title>
		<!-- 부트스트랩 -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
		<!-- 검색된 식자재 선택 시 보여줄 페이지, 선택한 메뉴 상세보기 구현 -->
	</head>
	<body><center><br>
		<article>
			<div class="container" role="main">
			<h2>content page</h2>
				<div class="bg-white rounded shadow-sm">
		
		<!--  상세보기 화면을 보여주는 폼태그 -->
		<form class="ingredient_detail_form" name="ingredient_detail_form" method="post" action="/onm/store_ingredient_updel_form.onm">

			<input type=hidden name=i_no value="${getIngredientDetail.i_no}">
			<b>[식자재 상세정보]</b><br>
			<table class="table table" width="500" border=1 bordercolor="#DDDDDD"  cellpadding=5 align=center>
				<tr align=center>	
					<th bgcolor="gray" width=60>test1
					<td width=150> ${getIngredientDetail.i_no}
				<tr align=center>	
					<th bgcolor="gray" width=60>test2
					<td width=150> ${getIngredientDetail.ia_code}
				<tr align=center>	
					<th bgcolor="gray" width=60>test3
					<td width=150> ${getIngredientDetail.ib_code}
				<tr align=center>	
					<th bgcolor="gray" width=60>test4
					<td width=150> ${getIngredientDetail.io_code}
				<tr align=center>	
					<th bgcolor="gray" width=60>test5
					<td width=150> ${getIngredientDetail.s_no}
				<tr align=center>
					<th bgcolor="gray" width=60>test6
					<td width=150> ${getIngredientDetail.num}
				<tr align=center>	
					<th bgcolor="gray" width=60>test7
					<td width=150> ${getIngredientDetail.i_name}
				<tr align=center>	
					<th bgcolor="gray" width=60>test8
					<td width=150> ${getIngredientDetail.i_size}
				<tr align=center>	
					<th bgcolor="gray" width=60>test9
					<td width=150> ${getIngredientDetail.price}
				<tr align=center>
					<th bgcolor="gray">test10
					<td width=60 colspan=3>
						<textarea name="content" rows="13" cols="45" style="border:0" readonly>${getIngredientDetail.i_comment}</textarea>
				<tr align=center>	
					<th bgcolor="gray" width=60>test11
					<td width=150> ${getIngredientDetail.reg_date}
				<tr align=center>
					<th bgcolor="gray" width=60>test12
					<td width=150 colspan=3> ${getIngredientDetail.is_del}

			</table>
	
					<button type="button" class="btn btn-sm btn-primary" id="ingreUpdate" onClick="document.ingredient_detail_form.submit()">수정</button>
					<button type="button" class="btn btn-sm btn-primary" id="ingreDelete" onClick="checkIngDeleteForm()">삭제</button>
					<button type="button" class="btn btn-sm btn-primary" id="returnList" onClick="location.replace('/onm/store_ingredient_form.onm')">돌아가기</button>


			
			<input type="hidden" name="selectPageNo">
		
			
		</form>
	</div>
			</div>
			</article>
	</body>
</html>