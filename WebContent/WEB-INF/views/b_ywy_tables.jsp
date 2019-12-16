<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ include file="/WEB-INF/views/common.jsp" %>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin - Tables</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

  <script>
	$(document).ready(function(){
		//--------------------------------------------------------------------------------------------------
		// name="rowCntPerPage"에 change 이벤트가 발생하면 실행할 코드 설정하기
		//--------------------------------------------------------------------------------------------------
		$('[name=rowCntPerPage]').change(function(){
			goSearch();
		});
		
		setTableTrBgColor(
				"table"			// 테이블 클래스 값
				,"#EEEEEF"		// 헤더 tr 배경색
				,"White"		// 홀수행 배경색
				,"#EFFFEF"		// 짝수행 배경색
				,"#B2CCFF"		    // 마우스 온 시 배경색
		);
		//--------------------------------------------------------------------------------------------------
		// 페이징 처리 관련 HTML 소스를 class=pagingNumber 가진 태그 안에 삽입하기
		//--------------------------------------------------------------------------------------------------
		$(".pagingNumber").html(
			getPagingNumber(
				"${tableListAllCnt}"					// 검색결과 총 행 개수
				,"${tableSearchDTO.selectPageNo}"		// 선택된 현재 페이지 번호
				,"${tableSearchDTO.rowCntPerPage}"		// 페이지 당 출력행의 개수
				,"10"									// 페이지 당 보여줄 페이지 번호 개수
				,"goSearch();"							// 페이지 번호 클릭 후 실행할 자스 코드	
			)
		);
		
		//--------------------------------------------------------------------------------------------------
		// 클라이언트가 보낸 검색 조건을 입력 양식에 넣어주기
		//--------------------------------------------------------------------------------------------------
		$('[name=rowCntPerPage]').val("${tableSearchDTO.rowCntPerPage}");
		$('[name=selectPageNo]').val("${tableSearchDTO.selectPageNo}");
		$('[name=keyword]').val("${tableSearchDTO.keyword}");

	});

	function goSearch(){
		if(is_empty("[name=tableUpdateForm] [name=keyword]")){
			 $("[name=tableUpdateForm] [name=keyword]").val("");
		}	
		// 키워드 앞뒤에 공백이 있으면 제거하고 다시 넣어주기
		var keyword=$("[name=tableUpdateForm] [name=keyword]").val();
		keyword=$.trim(keyword);
		$("[name=tableUpdateForm] [name=keyword]").val(keyword);

		document.tableUpdateForm.submit();	
	}
	
	function goSearchAll(){
		//--------------------------------------------------------------------------------------------------
		// name=boardListForm 을 가진 form 태그의 내부의 모든 입력양식에 value 속성값을 비우거나 체크를 풀기
		// 체크박스나 라디오는 체크를 풀고 그 외 입력양식은 value속성값을 비운다.
		//--------------------------------------------------------------------------------------------------
		document.tableUpdateForm.reset();
		//-------------------------------------------------------------------------------------------------
		// 선택페이지 번호와 페이지당 보여지는 행의 개수는 비우면 안되므로 기본값을 넣어준다.
		//-------------------------------------------------------------------------------------------------
		// 모든 것을 reset하는데 선택 페이지 번호, 한 화면의 행의 개수에 default 값 넣어주는 것
		$("[name=selectPageNo]").val("1");
		$("[name=rowCntPerPage]").val("10");
		goSearch();
	}

	function goTableUpdateForm(){
		var trArr = new Array();
		
		$(".tableListTr").each(function(index){
			trArr[index] = new Array();
			trArr[index].push($(this).find(".item_no").val());
			trArr[index].push($(this).find(".purchase_price").val());
			trArr[index].push($(this).find(".sell_price").val());
			trArr[index].push($(this).find(".stock").val());
		});

		$.ajax({
			// 접속할 서버 쪽 url 주소 설정
			url : "/ictProject/tableUpdateProc.do"
			// 전송 방법 설정
			, type : "post"
			// 서버로 보낼 파라미터명과 파라미터값을 설정
			, data : "trArr=" + trArr
			// 서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정
			// 매개변수 boardRegCnt에는 입력 행의 개수가 들어온다.
			, success : function(tableUpdateCnt){						
				if(tableUpdateCnt>=0){
					alert("수정 성공!");
					location.replace('/ictProject/tableForm.do');
				}else{
					alert("서버 쪽 DB연동 실패!");
				}
			}
			// 서버의 응답을 못받았을 경우 실행할 익명함수 설정
			,error : function(){
				alert("서버 접속 실패");
			}
		});
	}

	</script>
</head>

<body id="page-top">

  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="index.html">O & M 재고/관리 시스템 [관리자 모드]</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
        <div class="input-group-append">
          <button class="btn btn-primary" type="button">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-bell fa-fw"></i>
          <span class="badge badge-danger">9+</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-envelope fa-fw"></i>
          <span class="badge badge-danger">7</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item" href="#">Settings</a>
          <a class="dropdown-item" href="#">Activity Log</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
        </div>
      </li>
    </ul>

  </nav>

  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>홈으로</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>페이지</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <h6 class="dropdown-header">Login Screens:</h6>
          <a class="dropdown-item" href="login.html">Login</a>
          <a class="dropdown-item" href="register.html">Register</a>
          <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
          <div class="dropdown-divider"></div>
          <h6 class="dropdown-header">Other Pages:</h6>
          <a class="dropdown-item" href="404.html">404 Page</a>
          <a class="dropdown-item" href="blank.html">Blank Page</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="chart.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>차트보기</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>재고현황</span></a>
      </li>
    </ul>

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Tables</li>
        </ol>

        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            재고 목록</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
				
		                <tr>
		                  <td align=center><b>대분류</b></td>
		                  <td align=center><b>소분류</b></td>
		                  <td align=center><b>상품코드</b></td>
		                  <td align=center><b>상품명</b></td>
		                  <td align=center><b>규격</b></td>
		                  <td align=center><b>매입가격</b></td>
		                  <td align=center><b>판매가격</b></td>
		                  <td align=center><b>재고수량</b></td>
		                </tr>
					</thead>
					<tbody>
		            	<c:forEach items="${tableList}" var="item" varStatus="loopTagStatus">
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> ${item.manufacturer}
			               		<td align=center> ${item.part}
			               		<td align=center> ${item.code}
			               		<td align=center> ${item.item_name}
			               		<td align=center> ${item.unit}
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="item_no" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> TEST1
			               		<td align=center>TEST1
			               		<td align=center> TEST1
			               		<td align=center>TEST1
			               		<td align=center>TEST1
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="item_no" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> TEST2
			               		<td align=center>TEST2
			               		<td align=center> TEST2
			               		<td align=center>TEST2
			               		<td align=center>TEST2
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="item_no" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> TEST3
			               		<td align=center>TEST3
			               		<td align=center> TEST3
			               		<td align=center>TEST3
			               		<td align=center>TEST3
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="item_no" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> TEST4
			               		<td align=center>TEST4
			               		<td align=center> TEST4
			               		<td align=center>TEST4
			               		<td align=center>TEST4
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="item_no" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> TEST5
			               		<td align=center>TEST5
			               		<td align=center> TEST5
			               		<td align=center>TEST5
			               		<td align=center>TEST5
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="item_no" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> TEST6
			               		<td align=center>TEST6
			               		<td align=center> TEST6
			               		<td align=center>TEST6
			               		<td align=center>TEST6
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="item_no" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> TEST7
			               		<td align=center>TEST7
			               		<td align=center> TEST7
			               		<td align=center>TEST7
			               		<td align=center>TEST7
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="item_no" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> TEST8
			               		<td align=center>TEST8
			               		<td align=center> TEST8
			               		<td align=center>TEST8
			               		<td align=center>TEST8
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="item_no" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> TEST9
			               		<td align=center>TEST9
			               		<td align=center> TEST9
			               		<td align=center>TEST9
			               		<td align=center>TEST9
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="item_no" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> TEST10
			               		<td align=center>TEST10
			               		<td align=center> TEST10
			               		<td align=center>TEST10
			               		<td align=center>TEST10
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="itemno" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
			               	<tr class="tableListTr" style="cursor:pointer">
			               		<td align=center> TEST11
			               		<td align=center>TEST11
			               		<td align=center> TEST11
			               		<td align=center>TEST11
			               		<td align=center>TEST11
			               		<td align=center> <input type="text" class="purchase_price" size="7" value="${item.purchase_price}">
			               		<td align=center><input type="text"  class="sell_price" size="7" value="${item.sell_price}">
			               		<td align=center> <input type="text" class="stock" size="3" value="${item.stock}">
								<input type="hidden" class="item_no" value="${(empty item.item_no)?'0':item.item_no}">
			               	</tr>
		               	</c:forEach>

                </tbody>
              </table>
			  <table><tr><td align=right><div>상품의 총 개수 : ${tableListAllCnt}&nbsp;&nbsp;&nbsp;</div></table>
				   <center>
						 <table><tr><td align=center><div>&nbsp;<span class="pagingNumber"></span>&nbsp;</div></table>
				   </center>
				   </table>
        <div class="modal-body">.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal" onClick="goTableUpdateForm();" value="수정완료">수정완료</button>
            </div>
        <p class="small text-center text-muted my-5">
          <em>More table examples coming soon...</em>
        </p>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © Your Website 2019</span>
          </div>
        </div>
      </footer>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>

</body>

</html>
