/**
 * 식자재 검색에 관한 javascript
 */
function goIngDetailForm(i_no){
		var str = "i_no="+ i_no;	
		location.replace("/onm/store_ingredient_detail_form.onm?"+str);
	}
$(document).ready(function(){
	

	
	//--------------------------------------------------------------------
	// 페이징 처리 관련 HTML 소스를 class=pagingNumber 가진 태그 안에 삽입하기
	//--------------------------------------------------------------------
	$(".pagingNumber").html(
		getPagingNumber(
			"#"						// 검색 결과 총 행 개수
			,"#"		// 선택된 현재 페이지 번호
			,"#"		// 페이지 당 출력행의 개수
			,"#"									// 페이지 당 보여줄 페이지번호 개수
			,"goSearch();"							// 페이지 번호 클릭 후 실행할 자스코드
		)
	);
	


});

