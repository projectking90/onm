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
	<body><center><br><br><br>
	
	
	
	
	
	<form method="post" name="store_kind_insert_form" action="onm/store_kind_insert_form.onm">
	
		<input type="hidden" name="sk_no" value="${(empty param.sk_no)?0:param.sk_no}">
		<c:if test="${empty param.sk_no}">
			<b>[가게등록]</b>
		</c:if>
 
		<br><br>
		<table class="tbcss1" boarder=1 bordercolor=gray cellspacing=0 cellpadding=5 align=center>
			
			<tr>
				<th>업종번호
				<td><input type="text" name="sk_no" size="30" maxlength="20">
			<tr>
				<th>대분류
				<td><input type="text" name="ska_code" size="30" maxlength="20">
			<tr>
				<th>소분류
				<td><input type="text" name="skb_code" size="30" maxlength="20">
			<tr>
				<th>가게번호
				<td><input type="text" name="s_no" size="30" maxlength="20">
			<tr>
				<th>매장명
				<td><input type="text" name="sk_name" size="30" maxlength="20">
			<tr>
				<th>주소코드
				<td><input type="text" name="addr_code" size="30" maxlength="20">
			<tr>
				<th>상세주소
				<td><input type="text" name="location" size="30" maxlength="20">
			<tr>
				<th>매장전화번호
				<td><input type="text" name="sk_phone" size="30" maxlength="20">
			</table><br>
		
		<input type="button" value="저장" onClick="checkInsertStoreKind()">
		<input type="reset" value="다시작성">
		<input type="button" value="목록보기" onClick="goStoreKindForm()">
	</form>
	

		
	</body>
</html>