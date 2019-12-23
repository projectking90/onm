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
		<title>식자재 수정/삭제 페이지</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/Store/ingredient_updel_form.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/Store/ingredient_updel_form.js" type="text/javascript"></script>
		<!-- 식자재 수정/삭제 기능 선택 시 보여줄 페이지, 식자재 수정, 삭제 기능 구현 -->
	</head>
	<body>
		하이
		
		
		<!-- ---------------------------------------------------------------------------------------------- -->
		<!-- Spring Form 태그를 사용하여 html 의 form 태그와 입력양식 관련 태그를 출력한다.                 -->
		<!-- 이때 DTO 객체나 Map 객체 등과 연결하면 이 객체 안의 데이터가 자동으로 입력양식에 삽입된다.     -->
		<!-- ------------------------------------------------------------------------------------------------->
	<c:if test="${!empty IngredientDTO}">
		<form:form name="boardUpDelForm" method="post" commandName="IngredientDTO"
			action="${ctRoot}/#.do">
		
		<!-- ---------------------------------------------------------------------------------------------- -->
		<!-- 위 스프링 폼태그는 아래처럼 변환되어 실행된다 -->
		<!--<form id="boardDTO" name="boardUpDelForm" action="${ctRoot}/boardUpDelProc.do" method="post"> -->
		<!-- ---------------------------------------------------------------------------------------------- -->
			<table class="tbcss1" border=1 bordercolor=gray cellspacing=0
				cellpadding=5 align=center>
				<tr>
					<th bgcolor="gray">대분류
					<td><form:select path="ia_code" className="ia_code" /> 
						<!-- --------------------------------------------------------------------------- -->
						<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
						<%-- <input type=text name="writer" class="writer" value="${boardDTO.wirter}" > --%>
						<!-- --------------------------------------------------------------------------- -->
				<tr>
					<th bgcolor="gray">소분류
					<td><form:input path="ib_code" className="ib_code" /> <!-- --------------------------------------------------------------------------- -->
						<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
						<%-- <input type=text name="subject" class="subject" value="${boardDTO.subject}" > --%>
						<!-- --------------------------------------------------------------------------- -->
				<tr>
					<th bgcolor="gray">
					<td><form:input path="email" className="email" /> <!-- --------------------------------------------------------------------------- -->
						<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
						<%-- <input type=text name="email" class="email" value="${boardDTO.email}" > --%>
						<!-- --------------------------------------------------------------------------- -->
				<tr>
					<th bgcolor="gray">내 용
					<td><form:textarea path="content" className="content"
							rows="13" cols="40" /> <!-- --------------------------------------------------------------------------- -->
						<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
						<%-- <textarea name="content" class="content" >${boardDTO.content}/</textarea>  --%>
						<!-- --------------------------------------------------------------------------- -->
				<tr>
					<th bgcolor="gray">비밀번호
					<td><form:password path="pwd" className="pwd" /> <!-- --------------------------------------------------------------------------- -->
						<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
						<%-- <input type=text name="pwd" class="pwd" value="${boardDTO.pwd}" > --%>
						<!-- --------------------------------------------------------------------------- -->
			</table>
			<!-- --------------------------------------------------------- -->
			<table>
				<tr height=4>
					<td>
			</table>
			<!-- --------------------------------------------------------- -->
			<input type="hidden" name="upDel" value="up">
			<input type="hidden" name="b_no" value="${boardDTO.b_no}">
			<!-- --------------------------------------------------------- -->
			<input type="button" value="수정" onClick="checkBoardUpDelForm('up')">
			<input type="button" value="삭제" onClick="checkBoardUpDelForm('del')">
			<input type="button" value="목록보기"
				onClick="document.boardListForm.submit();">
		</form:form>
	</c:if>
	</body>
</html>