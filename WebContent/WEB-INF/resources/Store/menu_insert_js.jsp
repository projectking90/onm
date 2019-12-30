<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- css에 관련된 jsp 파일 수입 -->
<%@ include file="/WEB-INF/resources/Store/menu_insert_css.jsp"%>
<!DOCTYPE html>

<!-- 메뉴 추가에 관한 javascript -->
<script>
	$(document).ready(function(){
	})
	
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