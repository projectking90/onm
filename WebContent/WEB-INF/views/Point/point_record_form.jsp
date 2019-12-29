<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- javascript에 관한 jsp 수입 -->
<%@ include file="/WEB-INF/resources/Point/point_record_form_js.jsp" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>포인트 기록 페이지</title>
		<!-- 사용자가 포인트 기능 선택 시 보여줄 첫 페이지 -->
		
		<script>
			// [충전] 이동함수 
			function goPointChargeForm(){
				location.replace("/onm/point_charge_form.onm");
			}
		</script>
		
</head>
<body><center><br><br><br>


	<form name="point_present_form" method="post" action="/onm/point_record_form.onm">
		<div style="width:800">

		<a href="javascript:goPointChargeForm();">[포인트 충전]</a>
		<!-- <input type="button" value=" 충전 " class="Search" onClick="goPointChargeForm();"> -->

		</div><br>
	</form>
	
	<table><tr height=10><td></table>
	
	<table class="ipointTable tbcss2" border=1 cellspacing=0 cellpadding=5 width=700>
		<tr><th>번호<th>포인트출금여부<th>포인트금액<th>등록일

		<c:forEach items="${point_list}" var="point" varStatus="loopTagStatus">
	
			<tr style="cursor:pointer"
					bgcolor="${loopTagStatus.index%2==0?'white':'#F8FFEE'}"
					 onClick="goIngDetailForm(${point.p_no});">

				
				<td align=center>${loopTagStatus.index+1}
				
				<!-- ----------------------------------------------- -->
				<!-- 게시판 검색 목록 중에 각 행의 역순 일련번호 출력-->
				<!-- ----------------------------------------------- -->
				
				<%--
				정순 번호 출력 시 아래 코드로 대체 할 것
				${boardSearchDTO.selectPageNo*boardSearchDTO.rowCntPerPage-boardSearchDTO.rowCntPerPage+1+loopTagStatus.index} 
				--%>

					<%--
					<td align=center>${point.p_no} 
					<td align=center>${point.l_flag}
					<td align=center>${point.l_id} 
					--%>
					<td align=center>${point.p_state}
					<td align=center>${point.amount}
					<td align=center>${point.reg_date}
					
		</c:forEach>
		

	</table><br>
</body>
</html>