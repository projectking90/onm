<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- css에 관련된 jsp 파일 수입 -->
<%@ include file="/WEB-INF/resources/Point/point_present_css.jsp" %>
<!DOCTYPE html>

<!-- 포인트 선물에 관한 javascript -->
<script>
	$(document).ready(function(){
		
		$('[name=from_l_id]').val("b_oyj");
		$('[name=to_l_id]').val("b_chm");
		$('[name=point]').val("1000");
		
	});
	
	
	// [선물 화면] 유효성 체크 함수
	function checkPointPresentForm(){
		
		// -------------------------------- 
		if(confirm("정말 선물하시겠습니까?")==false){return;}
	
			$.ajax({
			// 접속할 서버쪽 URL 주소
			url : "/onm/point_present.onm"
			
			// 전송 방법
			, type : "post"
			
			// 서버로 보낼 파라미터명과 파라미터값
			, data : $("[name=point_present]").serialize()
			
			// 서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정
			, success : function(pointpresentCnt){											
				
				if(pointpresentCnt==2){
					alert("성공!");
					location.replace("/onm/point_record_form.onm");
				}
				
				
				// [게시판 새 글 입력 행 적용 개수]가 1개가 아니면 경고하기
				else{ alert("실패! 관리자에게 문의 바람."); }
					
			}
					
			// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
			, error : function(){ alert("서버 접속 실패"); }
		});
	}
</script>