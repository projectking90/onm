<!--***********************************************************  -->
<!--JSP 기술의 한 종류인 [Page Directive]를 이용하여 현 JSP 페이지 처리 방식 선언하기  -->
<!--***********************************************************  -->
	<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML 이고, 이 문서 안의 데이터는 UTF-8 방식으로 인코딩한다 라고 설정함 -->
	<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다 -->
	<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화 할 수 있는 방법이다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/All/common.jsp" %>


<html>
<head>
	<title>메뉴수정</title>
	<script>
		function goMenuUpdateForm(){
			$.ajax({
				url : "/onm/store_menu_update_proc.onm"
				, type : "post"
				, data : $("[name=menuUpForm]").serialize()
				, success : function(updateCnt){
								alert(updateCnt);
								if(updateCnt==1){
									alert("수정성공");
									location.replace("/onm/store_menu.onm");
								}
								else if(updateCnt==0){
									alert("아이디,암호 존재하지 않습니다! 재입력바람");
								}
								else{
									alert("서버 오류 발생! 관리자에게 문의바람");
								}
				}
				// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
				, error : function(){
					alert("서버 접속 실패! 관리자에게 문의바람");
				}
			});
		}

		function goMenuDelForm(){
			if(confirm("정말 삭제하시겠습니까?")==false){return;}
			document.menuDelForm.submit();
		}
	</script>
</head>
<body><center><br><br><br>	
	<table><tr height=4><td></table>
	
	<form:form  method="post" name="menuUpForm" commandName="menuDTO" action="/onm/store_menu_update_proc.onm">

		<b>[메뉴 수정/삭제]</b>
		<!----------------------------------------------------------------------->
		<table class="tbcss1" width="500" boarder=1 bordercolor="#DDDDDD" cellspacing=0 cellpadding="5" align="center">
			<tr>
				<th bgcolor="${headerColor}">메뉴이름
				<td bgcolor="${oddTrColor}"><form:input path="m_name" className="m_name"/>
			<tr>
				<th bgcolor="${headerColor}">대분류
				<td bgcolor="${oddTrColor}"><form:input path="ma_code" className="ma_code"/>
			<tr>
				<th bgcolor="${headerColor}">소분류
				<td bgcolor="${oddTrColor}"><form:input path="mb_code" className="mb_code"/>
			<tr>
				<th bgcolor="${headerColor}">설명
				<td bgcolor="${oddTrColor}"><form:textarea path="m_comment" className="m_comment" rows="13" cols="40" style="resize:none;"/>
			<tr>
				<th bgcolor="${headerColor}">가격
				<td bgcolor="${oddTrColor}"><form:input path="price" className="price"/>	
		</table>
		<!------------------------------------------------>
		<table><tr height=4><td></table>
		<!------------------------------------------------>
		<input type="hidden" name="m_no" value="${menuDTO.m_no}">
		<!------------------------------------------------>
		<input type="button" value="수정완료" onClick="goMenuUpdateForm();">&nbsp;	
		<input type="button" value="삭제" onClick="goMenuDelForm();">&nbsp;	
		<input type="button" value="목록보기" onClick="location.replace('/onm/store_menu.onm')">
	</form:form>
	
	
		<form name="menuDelForm" method="post" action="/onm/store_menu_delete.onm">
			<input type="text" name="m_no" class="m_no" value="${param.m_no}">
		</form>
	</center>
</body>
</html>
