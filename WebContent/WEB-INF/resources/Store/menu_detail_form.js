/**
 * 메뉴 상세보기에 관한 javascript
 */
$(document).ready(function(){
})

function goMenuUpdelForm(m_no){
	var str = "m_no="+m_no;
	location.replace("/onm/store_menu_detail_form.onm?"+str );
}

function goMenuUpDelForm(){
	document.menuUpDelForm.submit();
}