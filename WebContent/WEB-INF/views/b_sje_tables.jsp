<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    // 데이터 추가
    function goInsertData(){
      // jquery append 사용
      $("[id=dataTable] tbody ").prepend(
        "<tr><td><input type='text' size='20' maxlength='10' name='manufacturer'><td><input type='text' size='20' maxlength='10' name='part'><td><input type='text' size='20' maxlength='13' name='code'><td><input type='text' size='20' maxlength='50' name='item_name'><td><input type='text' size='20' maxlength='50' name='unit'><td><input type='text' size='20' maxlength='10' name='purchase_price'><td><input type='text' size='20' maxlength='50' name='sell_price'><td><input type='text' size='20' maxlength='50' name='stock'></tr>")
    }
    // 비어있는 지 확인하는 함수
    function is_empty(selector){
       //alert ("is_empty 함수 호출 성공")
       try{
          var flag = true;
          var obj = $(selector);
          if (obj.is(":checkbox") || obj.is("radio")){
             if(obj.filter(":checked").length>0){flag = false;}
          }else{
             var tmp = obj.val();
             tmp = tmp.split(" ").join("");
             if(tmp!=""){
                flag=false;
             }
          }
          return flag;
       }catch(e){
          alert("is_empty( '"+selector+"' ) 함수에서 에러 발생!");
          alert(e.message);
          return false;
       }
    }
    // 데이터 저장
    function saveInsertData(){
      // 맨 위에 행만 if문에 들어가기 때문에
      // 다시 생각해야 함
      if(is_empty("[name=manufacturer]")){
        alert("제조사를 입력해주세요.");
        $("[name=manufacturer]").focus();
        return;
      }
      if(is_empty("[name=part]")){
        alert("대분류를 입력해주세요.");
        $("[name=part]").focus();
        return;
      }
      if(is_empty("[name=code]")){
        alert("판매코드를 입력해주세요.");
        $("[name=code]").focus();
        return;
      }
      if(is_empty("[name=item_name]")){
        alert("상품명을 입력해주세요.");
        $("[name=item_name]").focus();
        return;
      }
      if(is_empty("[name=unit]")){
        alert("규격을 입력해주세요.");
        $("[name=unit]").focus();
        return;
      }
      if(is_empty("[name=purchase_price]")){
        alert("매입가격을 입력해주세요.");
        $("[name=purchase_price]").focus();
        return;
      }
      if(is_empty("[name=sell_price]")){
        alert("판매가격을 입력해주세요.");
        $("[name=sell_price]").focus();
        return;
      }
      if(is_empty("[name=stock]")){
        alert("재고수량을 입력해주세요.");
        $("[name=stock]").focus();
        return;
      }
      // 다 차있으면 arrayList에 저장
    }
  </script>
</head>

<body id="page-top">

  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="index.html">Start Bootstrap</a>

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
          <span>Dashboard</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
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
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>Tables</span></a>
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
            Data Table Example</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                        <td align=center><b>제조사</b></td>
                        <td align=center><b>대분류</b></td>
                        <td align=center><b>판매코드</b></td>
                        <td align=center><b>상품명</b></td>
                        <td align=center><b>규격</b></td>
                        <td align=center><b>매입가격</b></td>
                        <td align=center><b>판매가격</b></td>
                        <td align=center><b>재고수량</b></td>
                      </tr>
                </thead>
                <tbody>
                  <tr>
                        <td align=center><b>뉴트로지나</b></td>
                      <td align=center><b>Body</b></td>
                        <td align=center><b>8801008002636</b></td>
                        <td align=center><b>핸드크림 2번들</b></td>
                        <td align=center><b>56G*2입</b></td>
                        <td align=center><b>7650</b></td>
                        <td align=center><b>12750</b></td>
                        <td align=center><b>30</b></td>
                      </tr>

                </tbody>
              </table>
              <input type="button" value="재고 추가" onClick="goInsertData();">
              <input type="button" value="재고 수정">
              <input type="button" value="재고 삭제">
              <input type="button" value="내용 저장" onClick="saveInsertData();">
            </div>
          </div>
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
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