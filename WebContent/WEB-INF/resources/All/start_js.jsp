<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- CSS파일 수입 -->
<%@ include file="/WEB-INF/resources/All/start_css.jsp" %>
<!DOCTYPE html>

<%
	logger.info("start_js.jsp 수입");
%>

<!-- onm 시작 화면에 관한 javascript -->
<script>
	/**
	 * Example에 관한 javascript
	 */
	$(document).ready(function(){
		/**
		 * 고객 버튼을 클릭 시
		 */
		$(".cusmoter").click(function(){
			<%
				logger.info("고객 버튼 클릭");
			%>
			var brunch = $("[name=brunch]");
	
			if(!check(brunch)){
				return;
			}
			
			location.replace("/onm/cus.onm?brunch=" + brunch.val());
		});
		
		/**
		 * 가게 버튼을 클릭 시
		 */
		$(".company").click(function(){
			<%
				logger.info("가게 버튼 클릭");
			%>
			var brunch = $("[name=brunch]");
	
			if(!check(brunch)){
				return;
			}
			
			location.replace("/onm/com.onm?brunch=" + brunch.val());
		});
		
		/**
		 * 시 선택리스트가 변경 시
		 */
		$("[name=city]").change(function(){
			<%
				logger.info("시 변경");
			%>
			var city = $(this).val();
			
			getGuAddr(city);
		});
		
		/**
		 * 구 선택리스트가 변경 시
		 */
		$("[name=gu]").change(function(){
			<%
				logger.info("구 변경");
			%>
			var gu = $(this).val();
			
			getDongAddr(gu);
		});
	})
	
	/**
	 * 입력 양식의 빈칸을 확인
	 * @param brunch : 로그인 아이디
	 * @returns flag : 입력 여부
	 */
	function check(brunch){
		<%
			logger.info("check 함수 실행");
		%>
		var flag = true;
		
		if(is_empty(brunch)){
			alert("brunch를 입력해주세요.");
			flag = false;
		}
		
		return flag;
	}
	
	/**
	 * 선택한 시의 구를 가져옴
	 * @param city : 선택한 시
	 * @returns <option> : 선택한 시의 구를 담은 option 태그
	 */
	function getGuAddr(city){
		<%
			logger.info("getGuAddr 함수 실행");
		%>
		$.ajax({
			url : "/onm/get_gu.onm"	// 서버 쪽 호출 URL 주소 지정
			, type : "post"	// form 태그 안의 데이터 즉, 파라미터값을 보내는 방법 지정
			, data : "city=" + city	// 서버로 보낼 파라미터명과 파라미터값을 설정
			, success : function(gu){
				$("[name=gu]").empty();
				for(var i=0; i<gu.length; i++){
					$("[name=gu]").append("<option value=" + gu[i].gu_name +">" + gu[i].gu_name + "</option>");
				}
			}
			, error : function(){	// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
				alert("서버 접속 실패!\n관리자에게 문의 바람");
			}
		});
	}
	
	/**
	 * 선택한 구의 동을 가져옴
	 * @param gu : 선택한 구
	 * @returns <option> : 선택한 구의 동을 담은 option 태그
	 */
	function getDongAddr(gu){
		<%
			logger.info("getDongAddr 함수 실행");
		%>
		$.ajax({
			url : "/onm/get_dong.onm"	// 서버 쪽 호출 URL 주소 지정
			, type : "post"	// form 태그 안의 데이터 즉, 파라미터값을 보내는 방법 지정
			, data : "gu=" + gu	// 서버로 보낼 파라미터명과 파라미터값을 설정
			, success : function(dong){
				$("[name=dong]").empty();
				for(var i=0; i<dong.length; i++){
					$("[name=dong]").append("<option value=" + dong[i].dong_name +">" + dong[i].dong_name + "</option>");
				}
			}
			, error : function(){	// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
				alert("서버 접속 실패!\n관리자에게 문의 바람");
			}
		});
	}
</script>