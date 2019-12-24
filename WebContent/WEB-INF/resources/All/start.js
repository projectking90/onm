/**
 * Example에 관한 javascript
 */
$(document).ready(function(){
	/**
	 * 고객 버튼을 클릭 시
	 */
	$(".cusmoter").click(function(){
		var brunch = $("[name=brunch]");

		if(!check(brunch)){
			return;
		}
		
		location.replace("/onm/cus.onm?brunch=" + brunch.val());
	});
	
	/**
	 * 기업 버튼을 클릭 시
	 */
	$(".company").click(function(){
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
		var city = $(this).val();
		
		getGuAddr(city);
	});
	
	/**
	 * 구 선택리스트가 변경 시
	 */
	$("[name=gu]").change(function(){
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