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
		<title>식자재 리스트 페이지</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/Store/ingredient_form.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/Store/ingredient_form.js" type="text/javascript"></script>
		<!-- 식자재 기능 선택 시 보여줄 첫 페이지 전체 검색, 검색 조건에 의한 검색을 보여줄 페이지 -->
		
		<script>
			// [식자재 등록] 이동함수 
			function goIngredientInsertForm(){
				location.replace("/onm/store_ingredient_insert_form.onm");
			}
		</script>
		
		
	</head>
	
	<body><center><br><br><br>
	
	
	
	
	<form name="ingredient_form" method="post" action="/onm/store_ingredient_form.onm">
		<div style="width:800">

			[검색] : <input type="text" name="keyword1" class="keyword1">
			
			<input type="button" value="   검색   " class="Search" onClick="goSearch();">
<!-- 			
			<a href="javascript:goIngredientInsertForm();">[식자재 등록]</a>
-->
			<input type="button" value="식자재 등록" onClick="location.replace('${cr}/store_ingredient_insert_form.onm')">

			<input type="hidden" name="selectPageNo">
			
		</div><br>
	</form>
	
	<div>&nbsp;<span class="pagingNumber"></span>&nbsp;</div>
	
	<table><tr height=10><td></table>
	
	<table class="ingredientTable tbcss2" border=1 cellspacing=0 cellpadding=5 width=700>
		<tr><th>번호<th>대분류<th>소분류<th>가게번호<th>상품코드<th>상품명<th>규격<th>매입가격<th>설명<th>등록일<th>원산지
	</table><br>
	
	<c:if test="${empty boardList}">
		검색 결과가 없습니다
	</c:if>




</body>
</html>
		
	</body>
</html>