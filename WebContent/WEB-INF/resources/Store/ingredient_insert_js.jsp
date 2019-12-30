<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- css에 관련된 jsp 파일 수입 -->
<%@ include file="/WEB-INF/resources/Store/ingredient_insert_css.jsp"%>
<!DOCTYPE html>

<!-- 식자재 추가에 관한 javascript -->
<script>
	$(document).ready(function(){
		$('[name=ia_code]').val("1");
		$('[name=ib_code]').val("1");
		$('[name=s_no]').val("1");
		$('[name=num]').val("1");
		$('[name=i_name]').val("1");
		$('[name=i_size]').val("1");
		$('[name=price]').val("1");
		$('[name=io_code]').val("1");
		
	});
	
	// [식자재 등록 화면] 유효성 체크 함수
	function checkIngredientInsertForm(){
		// -------------------------------- 
		if(confirm("정말 저장하시겠습니까?")==false){return;}
		
		// 현재 화면에서 페이지 이동 없이 서버쪽 /z_spring/boardRegProc.do 을 호출하여
		// 게시판 글을 입력하고 [게시판 입력 행 적용 개수]를 받기
			$.ajax({
			// 접속할 서버쪽 URL 주소
			url : "/onm/store_ingredient_insert.onm"
			
			// 전송 방법
			, type : "post"
			
			// 서버로 보낼 파라미터명과 파라미터값
			, data : $("[name=ingredient_insert]").serialize()
			
			// 서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정
			, success : function(ingredientCnt){											
				
					if($("[name=ingredient_insert] [name=i_no]")){
						if(ingredientCnt==1){
							alert("등록 성공!");
							location.replace("/onm/store_ingredient_form.onm");
						}
						
						// [게시판 새 글 입력 행 적용 개수]가 1개가 아니면 경고하기
						else{ alert("등록 실패! 관리자에게 문의 바람."); }
					}
			}
					
			// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
			, error : function(){ alert("서버 접속 실패"); }
		});
	}
</script>