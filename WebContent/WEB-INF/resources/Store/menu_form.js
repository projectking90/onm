/**
 * 메뉴 검색에 관한 javascript
 */
function goSearch(){
	if(is_empty("[name=menu_form] [name=keyword]")){
		 $("[name=menu_form] [name=keyword]").val("");
	}			

	var keyword=$("[name=menu_form] [name=keyword]").val();
	keyword=$.trim(keyword);
	
	$("[name=menu_form] [name=keyword]").val(keyword);
	
	document.menu_form.submit();
}

function goSearchAll(){
	document.menu_form.reset();

	$("[name=select_page_no]").val("1");
	$("[name=row_cnt_per_page]").val("10");
	goSearch();
}


function goBoardContentForm(m_no){
	var str = "m_no="+m_no;
	location.replace("/onm/store_menu_detail_form.onm?"+str );
}