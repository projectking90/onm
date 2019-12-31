<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- CSS파일 수입 -->
<%@ include file="/WEB-INF/resources/Order/order_cus_detail_css.jsp" %>
<!DOCTYPE html>

<!-- 주문하기(고객) 상세보기에 관한 javascript -->
<script>
	$(document).ready(function(){
	});
	
	function goOrder() {
		if ( is_empty("[name=storeMenuListForm] [name=c_id]") ) {
			alert('선택하신 메뉴가 없습니다');
			return;
		}
		if ( is_empty("[name=storeMenuListForm] [name=location]") ) {
			alert('주소가 입력되지 않았습니다');
			return;
		}
		if ( is_empty("[name=storeMenuListForm] [name=o_phone]") ) {
			alert('전화번호가 입력되지 않았습니다');
			return;
		}
		$.ajax({
			// 접속할 서버쪽 URL 주소 설정
			url : "/onm/order_cus.onm"
			// 전송 방법 설정
			,
			type : "post"
			// 서버로 보낼 파라미터명과 파라미터값을 설정
			,
			data : $("[name=storeMenuListForm]").serialize()
			,
			success : function(insert_result) {
				if (insert_result >= 1) {
					alert("주문표에 메뉴추가 성공!");
					/* location.replace("/onm/order_cus_check_form.onm"); */
				}
				else {
					alert("주문추가 실패");
				}
			}
			// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
			,
			error : function() {
				alert("서버 접속 실패");
			}
		});
	}
	
	function goStoreList() {
		location.replace('/onm/order_cus_form.onm');
	}
	
	function goOrderCheck() {
		/* var str = "c_id"+c_id
		location.replace('/onm/order_cus_form.onm?'+str); */
		document.orderCheck.submit();
	}
</script>