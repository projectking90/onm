/**
 * 식자재 수정/삭제에 관한 javascript
 */

		//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
		// [게시판 수정/삭제 화면] 에 입력된 데이터의 유효성 체크 함수 선언
		//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
		function checkIngUpDelForm(){

					
				if( is_empty("[name=ia_code]") ){                         //만약 이름이 공백 또는 길이가 없으면 
					alert("이름을 입력해주세요.");                       // 경고창 띄우고
					$("[name=ia_code]").focus();                          // 커서 되돌리기 
					return;
					
				}if( is_empty("[name=ib_code]") ){                        //만약 제목이 공백 또는 길이가 없으면 
					alert("제목을 입력해주세요.");                        // 경고창 띄우고
					$("[name=ib_code]").focus();                          // 커서 되돌리기
					return;
					
				}if( is_empty("[name=s_no]") ){                         //만약 이메일이 공백 또는 길이가 없으면 
					alert("이메일을 입력해주세요.");                     // 경고창 띄우고
					$("[name=s_no]").focus();                           // 커서 되돌리기
					return;
					
				}if( is_empty("[name=num]") ){                        //만약 내용이 공백 또는 길이가 없으면 
					alert("내용을 입력해주세요.");                       	 // 경고창 띄우고
					$("[name=num]").focus();                          // 커서 되돌리기
					return;
					
				}if( is_empty("[name=i_name]") ){                         //만약 비밀번호가 공백 또는 길이가 없으면 
					alert("비밀번호를 입력해주세요.");                 // 경고창 띄우고
					$("[name=i_name]").focus();                           // 커서 되돌리기
					return;
					
				}if( is_empty("[name=i_size]") ){                         //만약 비밀번호가 공백 또는 길이가 없으면 
					alert("비밀번호를 입력해주세요.");                 // 경고창 띄우고
					$("[name=i_size]").focus();                           // 커서 되돌리기
					return;
					
				}if( is_empty("[name=price]") ){                         //만약 비밀번호가 공백 또는 길이가 없으면 
					alert("비밀번호를 입력해주세요.");                 // 경고창 띄우고
					$("[name=price]").focus();                           // 커서 되돌리기
					return;

				}if( is_empty("[name=i_comment]") ){                         //만약 비밀번호가 공백 또는 길이가 없으면 
					alert("비밀번호를 입력해주세요.");                 // 경고창 띄우고
					$("[name=i_comment]").focus();                           // 커서 되돌리기
					return;

				}

				if(confirm("정말 수정하시겠습니까?")==false){
					return;
				}

			                           //else if(upDel=='up')
			//=============================================================================
			// 현재 화면에서 페이지 이동 없이 서버쪽 "${ctRoot}/boardUpDelProc.do" 를 호출하여
			// [게시판 수정 또는 삭제 적용 개수]를 받는다
			//=============================================================================
			alert($('[name=updateStoreIngredient]').serialize());
			
			$.ajax({
				// 접속할 서버쪽 URL 주소 설정
				url : "/onm/store_ingredient_update.onm"
				// 전송 방법 설정
				,type : "post"
				// 서버로 보낼 파라미터명과 파라미터값을 설정
				,data : $('[name=updateStoreIngredient]').serialize()
				
				//서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정
				// 매개변수 upDelCnt 에는 [게시판 수정 또는 삭제 적용 개수]가 들어온다.
				,success : function(update_result){
						if(update_result==1){
							alert("수정 성공!");
							location.replace("/onm/store_ingredient_form.onm")
						}else if(update_result==-1){
							alert("게시물이 삭제되어 수정할 수 없습니다!");
							location.replace("/onm/store_ingredient_form.onm")
						}else if(update_result==-2){
							alert("비밀번호가 잘못 입력 되었습니다!");
						}else if(update_result==0){
							
							alert(dd);
						}else{
							alert("서버쪽 DB 연동 실패!");
						}
				}                    //,success : function(upDelCnt)

				
				//서버의 응답을 못 받았을 경우 실행할 익명함수 설정
				,error : function(){
					alert("서버와 통신 실패!");
				}                           //,error : function()


			});                        //$.ajax({

		}                             // checkBoardUpDelForm(upDel)
		
		
		
		
		
		//----------------------------------------------------------------------------------------------//
		//----------------------------------------------------------------------------------------------//
		//----------------------------------------------------------------------------------------------//
		
		
		
		
		


