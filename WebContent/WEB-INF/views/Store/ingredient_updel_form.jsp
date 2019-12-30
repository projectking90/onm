<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- javascript에 관한 jsp 수입 -->
<%@ include file="/WEB-INF/resources/Store/ingredient_updel_js.jsp" %>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>식자재 수정/삭제 페이지</title>
		<!-- 식자재 수정/삭제 기능 선택 시 보여줄 페이지, 식자재 수정, 삭제 기능 구현 -->
	</head>
	<body>
		식자재 수정/삭제 페이지 (구현중) 2019-12-25
		<form method="post" name=updateStoreIngredient action="/onm/store_ingredient_updel_form.onm">
		<table class="table table" border=1 bordercolor=gray cellspacing=0 cellpadding=5 align=center>
		
		<tr>
			<th bgcolor="gray">대분류
			<td><input type=text name="ia_code" class="ia_code" value="${ingredientDTO.ia_code}">
		<tr>
			<th bgcolor="gray">소분류
			<td><input type=text name="ib_code" class="ib_code" value="${ingredientDTO.ib_code}">
		<tr>
			<th bgcolor="gray">소분류
			<td><input type=text name="io_code" class="io_code" value="${ingredientDTO.io_code}">
		<tr>
			<th bgcolor="gray">가게번호
			<td><input type=text name="s_no" class="s_no" value="${ingredientDTO.s_no}">
		<tr>
			<th bgcolor="gray">상품코드
			<td><input type=text name="num" class="num" value="${ingredientDTO.num}">
		<tr>
			<th bgcolor="gray">상품명
			<td><input type=text name="i_name" class="i_name" value="${ingredientDTO.i_name}">
		<tr>
			<th bgcolor="gray">규격
			<td><input type=text name="i_size" class="i_size" value="${ingredientDTO.i_size}">
		<tr>
			<th bgcolor="gray">매입가격
			<td><input type=text name="price" class="price" value="${ingredientDTO.price}">
		<tr>
			<th bgcolor="gray">설명
			<td><input type=text name="i_comment" class="i_comment" value="${ingredientDTO.i_comment}">
		<tr>
			<th bgcolor="gray">등록일
			<td><input type=text name="reg_date" class="reg_date" value="${ingredientDTO.reg_date}">
		<tr>
			<th bgcolor="gray">삭제여부
			<td><input type=text name="is_del" class="is_del" value="${ingredientDTO.is_del}">
		</table>
	<%-- 		<c:if test="${!empty getIngredientDetail}">
			<form:form name="updateStoreIngredient" method="post" commandName="getIngredientDetail"
				action="/onm/store_ingredient_updel_form.onm">
			
			<!-- ---------------------------------------------------------------------------------------------- -->
			<!-- 위 스프링 폼태그는 아래처럼 변환되어 실행된다 -->
			<!--<form id="boardDTO" name="boardUpDelForm" action="${ctRoot}/boardUpDelProc.do" method="post"> -->
			<!-- ---------------------------------------------------------------------------------------------- -->
	
				
				<b>[식자재 수정/삭제]</b>
				<br>
				<table class="table" border=1 bordercolor=gray cellspacing=0 cellpadding=5 align=center>
					<tr>
						<th bgcolor="gray">대분류
						<td><form:input path="ia_code" className="ia_code" /> 
							<!-- --------------------------------------------------------------------------- -->
							<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
							<input type=text name="writer" class="writer" value="${boardDTO.wirter}" >
							<!-- --------------------------------------------------------------------------- -->
					<tr>
						<th bgcolor="gray">소분류
						<td><form:input path="ib_code" className="ib_code" /> <!-- --------------------------------------------------------------------------- -->
							<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
							<input type=text name="subject" class="subject" value="${boardDTO.subject}" >
							<!-- --------------------------------------------------------------------------- -->
					<tr>
						<th bgcolor="gray">가게번호
						<td><form:input path="s_no" className="s_no" /> <!-- --------------------------------------------------------------------------- -->
							<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
							<input type=text name="email" class="email" value="${boardDTO.email}" >
							<!-- --------------------------------------------------------------------------- -->
					<tr>
						<th bgcolor="gray">상품코드
						<td><form:input path="num" className="num" /> <!-- --------------------------------------------------------------------------- -->
							<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
							<input type=text name="email" class="email" value="${boardDTO.email}" >
							<!-- --------------------------------------------------------------------------- -->
					<tr>
						<th bgcolor="gray">상품명
						<td><form:input path="i_name" className="i_name" /> <!-- --------------------------------------------------------------------------- -->
							<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
							<input type=text name="email" class="email" value="${boardDTO.email}" >
							<!-- --------------------------------------------------------------------------- -->
					<tr>
						<th bgcolor="gray">규격
						<td><form:input path="i_size" className="i_size" /> <!-- --------------------------------------------------------------------------- -->
							<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
							<input type=text name="email" class="email" value="${boardDTO.email}" >
							<!-- --------------------------------------------------------------------------- -->
					<tr>
						<th bgcolor="gray">매입가격
						<td><form:input path="price" className="price" /> <!-- --------------------------------------------------------------------------- -->
							<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
							<input type=text name="email" class="email" value="${boardDTO.email}" >
							<!-- --------------------------------------------------------------------------- -->
					<tr>
						<th bgcolor="gray">설명
						<td><form:textarea path="i_comment" className="i_comment"
								rows="13" cols="40" /> <!-- --------------------------------------------------------------------------- -->
							<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
							<textarea name="content" class="content" >${boardDTO.content}/</textarea> 
							<!-- --------------------------------------------------------------------------- -->
					<tr>
						<th bgcolor="gray">등록일
						<td><form:input path="reg_date" className="reg_date" /> <!-- --------------------------------------------------------------------------- -->
							<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
							<input type=text name="email" class="email" value="${boardDTO.email}" >
							<!-- --------------------------------------------------------------------------- -->
					<tr>
						<th bgcolor="gray">삭제여부
						<td><form:input path="is_del" className="is_del" /> <!-- --------------------------------------------------------------------------- -->
							<!--  위 스프링 폼 태그는 아래처럼 변화된다.                                     -->
							<input type=text name="email" class="email" value="${boardDTO.email}" >
							<!-- --------------------------------------------------------------------------- -->
				</table>
			</form:form>
		</c:if>
		
		
				
				 --%>
				<!-- --------------------------------------------------------- -->
				<table>
					<tr height=4>
						<td>
				</table>
				<!-- --------------------------------------------------------- -->
				<input type="hidden" name="i_no" value="${ingredientDTO.i_no}">
				<!-- --------------------------------------------------------- -->
				<input type="button" value="수정하기" onClick="checkIngUpDelForm()">
				<input type="button" value="돌아가기"
					onClick="document.ingredient_form.submit();">
	
		
		
		
		</form>
	</body>
</html>