<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- javascript에 관한 jsp 수입 -->
<%@ include file="/WEB-INF/resources/Stock/stock_form_js.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재고관리 검색 페이지</title>
<!-- 가게가 재고관리 검색 기능 선택 시 보여줄 첫 페이지 -->
<script>
	$(document).ready(function(){
		alert("${s_id}");
		$('[name=row_cnt_per_page]').change(function(){
			goSearch();
		});
	
		//--------------------------------------------------------------------------------------------------
		// 페이징 처리 관련 HTML 소스를 class=pagingNumber 가진 태그 안에 삽입하기
		//--------------------------------------------------------------------------------------------------
		$(".paging_number").html(
			getPagingNumber(
				"${stock_list_all_cnt}"					// 검색결과 총 행 개수
				,"${stock_searchDTO.select_page_no}"		// 선택된 현재 페이지 번호
				,"${stock_searchDTO.row_cnt_per_page}"		// 페이지 당 출력행의 개수
				,"10"									// 페이지 당 보여줄 페이지 번호 개수
				,"goSearch();"							// 페이지 번호 클릭 후 실행할 자스 코드	
			)
		);
		
		//--------------------------------------------------------------------------------------------------
		// 게시판 목록을 보여주는 TABLE의 헤더행, 짝수행, 홀수행, 마우스온 일 때 배경색 설정하기
		//--------------------------------------------------------------------------------------------------
		setTableTrBgColor(
			"stock_table"			// 테이블 클래스 값
			,"gray"					// 헤더 tr 배경색
			,"white"				// 홀수행 배경색
			,"#F8E0E0"			// 짝수행 배경색
			,"pink"					// 마우스 온 시 배경색
		);
		
		$('[name=row_cnt_per_page]').val("${stock_searchDTO.row_cnt_per_page}");
		$('[name=keyword]').val("${stock_searchDTO.keyword}");
		$('[name=select_page_no]').val("${stock_searchDTO.select_page_no}");	
	});
	
	function goSearch(){
		if(is_empty("[name=stock_form] [name=keyword]")){
			 $("[name=stock_form] [name=keyword]").val("");
		}	
		
		// 키워드 앞뒤에 공백이 있으면 제거하고 다시 넣어주기
		var keyword=$("[name=stock_form] [name=keyword]").val();
		keyword=$.trim(keyword);
		$("[name=stock_form] [name=keyword]").val(keyword);

		document.stock_form.submit();
	}

	//*************************************************************************************
	// [모두 검색] 버튼을 누르면 호출되는 함수 선언
	//*************************************************************************************
	function goSearchAll(){
		//--------------------------------------------------------------------------------------------------
		// name=boardListForm 을 가진 form 태그의 내부의 모든 입력양식에 value 속성값을 비우거나 체크를 풀기
		// 체크박스나 라디오는 체크를 풀고 그 외 입력양식은 value속성값을 비운다.
		//--------------------------------------------------------------------------------------------------
		document.stock_form.reset();
		//-------------------------------------------------------------------------------------------------
		// 선택페이지 번호와 페이지당 보여지는 행의 개수는 비우면 안되므로 기본값을 넣어준다.
		//-------------------------------------------------------------------------------------------------
		// 모든 것을 reset하는데 선택 페이지 번호, 한 화면의 행의 개수에 default 값 넣어주는 것
		$("[name=select_page_no]").val("1");
		$("[name=row_cnt_per_page]").val("10");
		goSearch();
	}

	function go_stock_insert_form( ){
		location.replace("/onm/stock_insert_form.onm") // 웹서버에게 괄호 안에 있는 url 주소를 get방식으로 접근
	}
	
	function go_stock_detail_form(st_no){
		var str = "st_no="+st_no+"&"+$('[name=stock_form]').serialize();
		location.replace("/onm/stock_detail_form.onm?"+str);
	}
</script>
</head>
<body>
	<center>
		<br><br><br><br><br><br>
		
		<!-- ******************************************************** -->
		<!-- 게시판 검색 조건 관련 입력 양식 삽입된 form 태그 선언하기 -->
		<!-- ******************************************************** -->
		<form name="stock_form" method="post" action="/onm/stock_form.onm">
			<div style="width: 800">
				<!-- ---------------------------------- -->
				<!-- 키워드 검색 입력 양식 표현하기 -->
				<!-- ---------------------------------- -->
				[키워드] : <input type="text" name="keyword" class="keyword">
				&nbsp;&nbsp; 
				<input type="button" value="  검색  " class="contactSearch" onClick="goSearch();">&nbsp; 
				<input type="button" value="    모두검색    " onClick="goSearchAll();">&nbsp;
				<input type="button" value="   재고 추가    " onClick="go_stock_insert_form( );">&nbsp;&nbsp; 
				<input type="hidden" name="select_page_no">
			</div>
			<br>
			<!-- ---------------------------------- -->
			<table border=0 width=700>
				<tr>
					<td align=right>[총 개수] : ${stock_list_all_cnt}&nbsp;&nbsp;&nbsp;&nbsp; 
						<select name="row_cnt_per_page">
							<option value="10">10
							<option value="15">15
							<option value="20">20
							<option value="25">25
							<option value="30">30
					</select> 행보기
			</table>

			<!-- ************************************************ -->
			<!-- 페이징 번호를 삽입할 span 태그 선언하기 -->
			<!-- ************************************************ -->
			<div>
				&nbsp;<span class="paging_number"></span>&nbsp;
			</div>

			<table><tr height=10><td></table>

			<!-- ************************************************ -->
			<!-- 게시판 검색 목록 출력하기 -->
			<!-- ************************************************ -->
			<table class="stock_table" border=0 cellspacing=0 cellpadding=5 width=700>
				<tr bgcolor="gray">
					<th>재고 번호
					<th>식자재 상품명
					<th>수량
					<th>재고 상태
					
					<c:forEach items="${stock_list}" var="stock" varStatus="loopTagStatus">
						<tr style="cursor: pointer" onClick="go_stock_detail_form(${stock.st_no});">
							<td align=center>${stock_list_all_cnt-(stock_searchDTO.select_page_no*stock_searchDTO.row_cnt_per_page-stock_searchDTO.row_cnt_per_page+1+loopTagStatus.index)+1}
							<td align=center>${stock.i_name}
							<td align=center>${stock.cnt}
							<td align=center>${stock.st_state}
					</c:forEach>
			</table>			
				 
			<c:if test="${stock_list_all_cnt==0}">
				검색 데이터가 없습니다.
			</c:if>
		</form>
</body>
</html>