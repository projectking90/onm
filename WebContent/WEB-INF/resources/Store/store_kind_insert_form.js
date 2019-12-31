/**
 * 업종 추가에 관한 javascript
 */
$(document).ready(function(){
});

function goStoreKindForm(){
	location.replace('/onm/store_kind_form.onm');
	}
	
function checkInsertStoreKind(){
	
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