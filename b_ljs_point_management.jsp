<!DOCTYPE html>
<html lang="en">
	
<head>
	<script src="jquery-1.11.0.min.js"></script>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Point_management</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
<script>
    // 데이터 추가
    function go_charge(){
       $("[id=dataTable]").prepend(
        "<tr><td>카드<td><input type='text' size='20' name='manufacturer'></tr><tr><td> 금액 <td><input type='text' size='20'><td></tr><tr><td colspan=2 align='center'><input type='button' value=' 확인 ' name='code'><input type='button' value=' 취소 ' name='code'><input type='button' value='돌아가기' name='code'></tr>")
    }
	function go_present(){
		$("[id=dataTable] ").prepend(
      "<tr><td>선물받을 ID<td><input type='text' size='20'  name='manufacturer'></tr><tr><td> 금액 <td><input type='text' size='20'><td></tr><tr><td colspan=2 align='center'><input type='button' value=' 확인 ' name='code'><input type='button' value=' 취소 ' name='code'><input type='button' value='돌아가기' name='code'></tr>")
    }
	function go_cash(){
       $("[id=dataTable] ").prepend(
       "<tr><td>카드<td><input type='text' size='20' name='manufacturer'></tr><tr><td> 금액 <td><input type='text' size='20'><td></tr><tr><td colspan=2 align='center'><input type='button' value=' 확인 ' name='code'><input type='button' value=' 취소 ' name='code'><input type='button' value='돌아가기' name='code'></tr>")
    }
	function go_back(){
		 $("[id=dataTable]").remove()
	}

</script>


</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
           
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">O&M Point</h1>
					 <h3 class="h4 text-gray-900 mb-4">50000 P</h3>
					<hr>
                  </div>

				    <form class="user">
					<input type="button" value="          충전 하기           " onClick="go_charge();">&nbsp;&nbsp;
					<input type="button" value="          선물 하기           " onClick="go_present();">&nbsp;&nbsp;
					<input type="button" value="          현금 전환           " onClick="go_cash();">&nbsp;&nbsp;
					</form>
					<hr>
					<form id="dataTable">
					
					</form>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
   
</body>

</html>
