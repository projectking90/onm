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
	<!-- <link href="${cr}/resources/Store/ingredient_form.css" rel="stylesheet" type="text/css">-->
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<!-- JQuery 라이브러리 파일 수입 -->
	<script src="${cr}/resources/Store/ingredient_form.js" type="text/javascript"></script>
	<!-- 식자재 기능 선택 시 보여줄 첫 페이지 전체 검색, 검색 조건에 의한 검색을 보여줄 페이지 -->
	

	</head>
	
	<body><center><br><br><br>
		<article>
			<div class="container">
				<div class="table-responsive">
					<form name="ingredient_form" method="post" action="/onm/store_ingredient_form.onm">
					<div style="width:800">
					<div>
					[원하시는 상품명을 검색하세요] : <input type="text" name="keyword1" class="keyword1"> &nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-sm btn-primary" id="goSearch">검색</button>
					<button type="button" class="btn btn-sm btn-primary" id="ingReg">식자재 등록</button>
					<button type="button" class="btn btn-sm btn-primary" id="ingUpDel" onClick="location.replace('/onm/store_ingredient_updel_form.onm')">식자재 수정/삭제(임시)</button>
		
		<!-- 	<input type="button" value="   검색   "  class="btn btn-sm btn-primary" onClick="goSearch();">
			<input type="button" value="식자재 등록"  class="btn btn-sm btn-primary" onClick="location.replace('/onm/store_ingredient_insert_form.onm')"> 
			<input type="button" value="식자재 수정/삭제" class="btn btn-sm btn-primary"onClick="location.replace('/onm/store_ingredient_updel_form.onm')">  -->
		</div> 
		<!-- 
		<a href="javascript:goingredient_insert_form();">[식자재 등록]</a>
		 -->
		<input type="hidden" name="selectPageNo">
		
		</div><br>
		
		
		<table><tr height=10><td></table>
		
				<!----------------------------------------------------------------->
				<!--  게시판 검색목록 출력하기 -->
				<!----------------------------------------------------------------->
				<table class="table table-striped "  border=0 cellspacing=0 cellpadding=5 width=700>
						<tr bgcolor="${headerColor}" align="center">
							<th>대분류
							<th>소분류
							<th>가게번호
							<th>상품코드
							<th>상품명
							<th>규격
							<th>매입가격
							<th>설명
							<th>원산지
		
					<!---------------------------------------------------------------------->
					<!-- 사용자 정의 태그인 JSTL C코어 태그중 <forEach> 태그를 사용하여   -->
					<!-- ModelAndView 객체에 "boardList"라는 키값으로 저장된              -->
					<!-- List<Map<String,String> 객체안의 데이터를 출력하기               -->
					<!---------------------------------------------------------------------s->
					<%-- <c:forEach> 태그 속성 설명 --%>
					<!--  items : ModelAndView 객체에 저장한 객체키값명, EL문법 사용 , 주로 List객체의 키값명이 들어감      -->
					<!--  var   : for 문 안에서 사용할 지역변수 (items 속성에 설정한 List 객체 안의 i번째 데이터가 저장됨)  -->
					<!--  varStatus :  -->
					
					<c:forEach items="${ingredient_list}" var="board" varStatus="loopTagStatus">
						<c:if test = "${board.is_del eq 'F'}"> 
						<tr style="cursor:pointer" onClick="goIngDetailForm(${board.i_no});">
							<td align=center>${board.ia_code}
							<td align=center>${board.ib_code}
							<td align=center>${board.io_code}
							<td align=center>${board.s_no}
							<td align=center>${board.num}
							<td align=center>${board.i_name}
							<td align=center>${board.i_size}
							<td align=center>${board.price}
							<td align=center>${board.i_comment}
							</c:if>
					</c:forEach>
		
		
					
				</table><br>
				</div>
			</div>
			
		</form>
			</article>
		<c:if test="#">
		검색 결과가 없습니다
		</c:if>
		

	</body>
</html>