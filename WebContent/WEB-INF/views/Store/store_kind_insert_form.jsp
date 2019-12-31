<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- JSP 기술의 한 종류인 Include Directive를 이용하여 common.jsp 파일 내의 소스를 삽입 -->
<%@ include file="/WEB-INF/views/All/common.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>업종 추가 페이지</title>
		<!-- CSS파일 수입 -->
		<link href="${cr}/resources/Store/store_kind_insert_form.css" rel="stylesheet" type="text/css">
		<!-- JQuery 라이브러리 파일 수입 -->
		<script src="${cr}/resources/Store/store_kind_insert_form.js" type="text/javascript"></script>
		<!-- 업종 추가 기능 선택 시 보여줄 페이지, 업종 추가 기능 구현 -->
		<script>
		function goStoreKindForm(){
			location.replace('/onm/store_kind_form.onm');
	  	}
	  	
		function checkInsertStoreKind(){
			if(is_empty("[name=sk_no]")){
				alert("업종번호를 입력해주세요.");
				$("[name=sk_no]").focus();
				return;
			}
			if(is_empty("[name=ska_code]")){
				alert("대분류를 입력해주세요.");
				$("[name=ska_code]").focus();
				return;
			}
			if(is_empty("[name=skb_code]")){
				alert("소분류를 입력해주세요.");
				$("[name=skb_code]").focus();
				return;
			}	
			if(is_empty("[name=s_no]")){
				alert("가게번호를 입력해주세요.");
				$("[name=s_no]").focus();
				return;
			}	
			if(is_empty("[name=sk_name]")){
				alert("매장명을 입력해주세요.");
				$("[name=sk_name]").focus();
				return;
			}

			if(is_empty("[name=addr_code]")){
				alert("주소코드를 입력해주세요.");
				$("[name=addr_code]").focus();
				return;
			}

			if(is_empty("[name=location]")){
				alert("상세주소를 입력해주세요.");
				$("[name=location]").focus();
				return;
			}

			if(is_empty("[name=sk_phone]")){
				alert("매장전화번호를 입력해주세요.");
				$("[name=sk_phone]").focus();
				return;
			}

			if(confirm("정말 저장하시겠습니까?")==false){return;}

			$.ajax({
				// 접속할 서버 쪽 url 주소 설정
				url : "/onm/store_kind_insert.onm"
				// 전송 방법 설정
				, type : "post"
				// 서버로 보낼 파라미터명과 파라미터값을 설정
				, data : $("[name=store_kind_insert_form]").serialize()
				// 서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정
				// 매개변수 boardRegCnt에는 입력 행의 개수가 들어온다.
				, success : function(insertStoreCnt){						
					if(insertStoreCnt==1){
						alert("등록 성공!");
						location.replace('/onm/store_kind_form.onm');
					}else{
						alert("등록 실패!");
					}
				}
				// 서버의 응답을 못받았을 경우 실행할 익명함수 설정
				,error : function(){
					alert("서버 접속 실패");
				}
			});
		}
		</script>
		
	</head>
	<body>
	<center><br><br><br>	
	<table><tr height=4><td></table>
	<form:form method="post" name="store_kind_insert_form" commandName="store_kindDTO" action="/onm/store_kind_insert_form.onm">

      <b>[ 가게등록 ]</b><br>
      <table class="tbcss1" border=1 bordercolor=gray cellspacing=0 cellpadding=5 align=center>
			<!----------------------------------------------------------------------->
			<table class="tbcss1" width="500" boarder=1 bordercolor="#DDDDDD" cellspacing=0 cellpadding="5" align="center">
				<form:form name="StoreKindCodeForm" commandName="codestorekindDTO">
				<tr>
					<th bgcolor="${headerColor}">대분류
					<td bgcolor="${oddTrColor}"> <form:select path="ska_code">
													<form:options items="${codestorekindDTO.ska_nameList}" itemLabel="ska_name" itemValue="ska_name"></form:options>
												</form:select>
												<%-- <form:input path="ska_code" className="ska_code"/> --%>
				<tr>
					<th bgcolor="${headerColor}">소분류
					<td bgcolor="${oddTrColor}"> <form:select path="skb_code">
													<form:options items="${codestorekindDTO.skb_nameList}" itemLabel="skb_name" itemValue="skb_name"></form:options>
												</form:select>
												<%-- <form:input path="skb_code" className="skb_code"/> --%>
				</form:form>
				<tr>
					<th bgcolor="${headerColor}">가게번호
					<td bgcolor="${oddTrColor}"><form:input path="s_no" className="s_no"/>
				<tr>
					<th bgcolor="${headerColor}">매장명
					<td bgcolor="${oddTrColor}"><form:input path="sk_name" className="sk_name"/>
				<tr>
					<th bgcolor="${headerColor}">주소코드
					<td bgcolor="${oddTrColor}"><form:input path="addr_code" className="addr_code"/>
				<tr>
					<th bgcolor="${headerColor}">상세주소
					<td bgcolor="${oddTrColor}"><form:input path="location" className="location"/>
				<tr>
					<th bgcolor="${headerColor}">매장전화번호
					<td bgcolor="${oddTrColor}"><form:input path="sk_phone" className="sk_phone"/>
			</table>
			<!------------------------------------------------>
			<table><tr height=4><td></table>
			<!------------------------------------------------>
			<input type="hidden" name="s_id" value="${StoreKindDTO.s_id}">
			<!------------------------------------------------>
			<input type="button" value="저장" onClick="checkInsertStoreKind()">
			<input type="reset" value="다시작성">
			<input type="button" value="목록보기" onClick="goStoreKindForm()">
		</form:form>
	</center>
	</body>
</html>