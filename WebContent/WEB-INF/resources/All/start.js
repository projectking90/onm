/**
 * Example에 관한 javascript
 */
$(document).ready(function(){
	$(".cusmoter").click(function(){
		var brunch = $("[name=brunch]");

		if(!check(brunch)){
			return;
		}
		
		location.replace("/onm/cus.onm?brunch=" + brunch.val());
	});
	
	$(".company").click(function(){
		var brunch = $("[name=brunch]");

		if(!check(brunch)){
			return;
		}
		
		location.replace("/onm/com.onm?brunch=" + brunch.val());
	});
})

function check(brunch){
	var flag = true;
	
	if(is_empty(brunch)){
		alert("brunch를 입력해주세요.");
		flag = false;
	}
	
	return flag;
}