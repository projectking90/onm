/**
 * 메뉴 수정/삭제에 관한 javascript
 */
$(document).ready(function(){
})

function goMenuUpdateForm(){
	$.ajax({
		url : "/onm/store_menu_update_proc.onm"
		, type : "post"
		, data : $("[name=menuUpForm]").serialize()
		, success : function(updateCnt){
						alert(updateCnt);
						if(updateCnt==1){
							alert("수정성공");
							location.replace("/onm/store_menu.onm");
						}
						else if(updateCnt==0){
							alert("아이디,암호 존재하지 않습니다! 재입력바람");
						}
						else{
							alert("서버 오류 발생! 관리자에게 문의바람");
						}
			}
		// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
		, error : function(){
			alert("서버 접속 실패! 관리자에게 문의바람");
		}
	});
}

function goMenuDelForm(){
	if(confirm("정말 삭제하시겠습니까?")==false){return;}
	document.menuDelForm.submit();
}
