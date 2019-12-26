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
		<title>메뉴 추가 페이지</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/Store/menu_insert_form.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/Store/menu_insert_form.js" type="text/javascript"></script>
		<!-- common.js 수입 -->
		<script src="/WEB-INF/resources/common.js" type="text/javascript"></script>
		<!-- 메뉴 추가 기능 선택 시 보여줄 페이지, 메뉴 추가 기능 구현 -->
		<script>
			
			function go_menu_insert_form(){
				if(is_empty("[name=m_name]")){
					alert("메뉴명을 입력해주시기 바랍니다.");
					$("[name=m_name]").focus();
					return;
				}
				if(is_empty("[name=price]")){
					alert("가격을 입력해주시기 바랍니다.");
					$("[name=price]").focus();
					return;
				}

				alert($("[name=menu_insert_form]").serialize());
				$.ajax({
					url : "/onm/store_menu_insert.onm"
					, type : "post"
					,data : $("[name=menu_insert_form]").serialize()
					,success : function(insert_result){
						if(insert_result==1){
							alert("메뉴 등록 성공하였습니다.");
							location.replace("/onm/store_menu_form.onm");
						}else{
							alert("메뉴 등록 실패하였습니다. 관리자에게 문의하시기 바랍니다.")
						}
					}
					,error : function(){
						alert("서버 접속을 실패하였습니다.");
					}

				});
			}
		</script>
	</head>
	<body>
		<form method="post" name="menu_insert_form" action="/onm/store_menu_insert.onm">
			<input type="hidden" name="m_no" value="0">
			<input type="text" name="s_id" value=${s_id}>
			<!-- border을 주지 않았을 때 선 색상이 아예 없는 것으로 뜸 -->
		  	<table class="menu_insert_table" id="menu_insert_table" cellpadding="5" border="1" bordercolor="black">
	               
	               <tr>
	               
	                 <td align=center><b>대분류</b></td>
	                 <td align=center>
		                 <select name="ma_code">
		                 	<option value="1">test1
		                 	<option value="2">test2
		                 	<option value="3">test3
		                 	<option value="4">test4
		                 	<option value="5">test5
		                 </select>
		             </td>
	               <tr>
	                 <td align=center><b>소분류</b></td>
	                 <td align=center>
		                 <select name="mb_code">
		                 	<option value="1">test1
		                 	<option value="2">test2
		                 	<option value="3">test3
		                 	<option value="4">test4
		                 	<option value="5">test5
		                 </select>
		             </td>
	               <tr>
	                 <td align=center><b>메뉴</b></td>
	                 <td align=center><input type="text" size="30" maxlength="50" name="m_name"></td>
	               <tr>
	                 <td align=center><b>가격</b></td>
	                 <td align=center><input type="text" size="30" maxlength="50" name="price"></td>
	               <tr>
	                 <td align=center><b>메뉴 설명</b></td>
	                 <td align=center><textarea rows="10" cols="50" name="m_comment"></textarea></td>
	          </table>
		</form>
		
		<table>
			<tr>
				<td align=right><input type="button" value="&nbsp;&nbsp;등&nbsp;록&nbsp;&nbsp;" onClick="go_menu_insert_form();">
				&nbsp;
		</table>
	</body>
</html>