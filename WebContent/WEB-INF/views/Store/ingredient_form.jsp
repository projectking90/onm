<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Landing Page - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="css/landing-page.min.css" rel="stylesheet">

   <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/heroic-features.css" rel="stylesheet">


</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="#">O&M></a>
      <a class="btn btn-primary" href="#">Sign In</a>
    </div>
  </nav>

  <!-- Masthead -->
  <header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <h1 class="mb-5">식자재 검색</h1>
        </div>
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
          <form>
            <div class="form-row">
              <div class="col-12 col-md-9 mb-2 mb-md-0">
                <input type="text" class="form-control form-control-lg" placeholder="검색어를 입력해주세요">
              </div>
              <div class="col-12 col-md-3">
                <button type="submit" class="btn btn-block btn-lg btn-primary">Search</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </header>


  <section id="header-container" align=center><br><br><br>
		<tr>
			<td>
				<!--[목록 입력 양식] 출력-->
				<td bgcolor="DBDBDB">유형</td>
				<select name="type">
					<option value="한식">한식</option>
					<option value="양식">양식</option>
					<option value="중식">중식</option>
					<option value="분식">분식</option>
					<option value="디저트">디저트</option>
				</select>
			</td>
			<td>
				<!--[목록 입력 양식] 출력-->
				<td bgcolor="DBDBDB">상품</td>
				<select name="product">
					<option value="한식">한식</option>
					<option value="양식">양식</option>
					<option value="중식">중식</option>
					<option value="분식">분식</option>
					<option value="디저트">디저트</option>
				</select>
			</td>
			<td>
				<!--[목록 입력 양식] 출력-->
				<td bgcolor="DBDBDB">브랜드</td>
				<select name="brand">
					<option value="한식">한식</option>
					<option value="양식">양식</option>
					<option value="중식">중식</option>
					<option value="분식">분식</option>
					<option value="디저트">디저트</option>
				</select>
			</td><br><br>
		</section>
		<br><br>

		 <!-- Page Features -->
    <div class="row text-center">

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="C:\Users\hyeon\OneDrive\Desktop\prj\img\origin\1563411711159m0.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">[든든] 아비코 스파이시웨지 2.5kg-4입</h4>
            <p class="card-text">반달 웨지 감자에 한국인이 좋아하는 매운맛을 가미한 제품</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">구매</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="C:\Users\hyeon\OneDrive\Desktop\prj\img\origin\1559723862136m0.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">[든든] 동네 닭강정 2kg-6개</h4>
            <p class="card-text">매콤 달콤 닭강정</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">구매</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="C:\Users\hyeon\OneDrive\Desktop\prj\img\origin\영동_통오징어_짬뽕탕(730g)_메인_썸네일.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">[든든] 영동 통오징어 짬뽕탕 730g-6개</h4>
            <p class="card-text">해물의 깊은 맛 오징어가 통째로</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">구매</a>
          </div>
        </div>
      </div>

	<div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="C:\Users\hyeon\OneDrive\Desktop\prj\img\origin\썸네일_국내산-양념무뼈닭발-1.5kg-2개_.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">[든든] 국내산 양념무뼈닭발 1.5kg-2개</h4>
            <p class="card-text">콜라겐 듬뿍! 대표 매운맛</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">구매</a>
          </div>
        </div>
      </div>

	  <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="C:\Users\hyeon\OneDrive\Desktop\prj\img\origin\야채춘권(50gx20입)_메인_썸네일.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">[든든] 야채춘권 50g-20입</h4>
            <p class="card-text">바삭한 춘권피와 야채의 풍미</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">구매</a>
          </div>
        </div>
      </div>

	  <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="C:\Users\hyeon\OneDrive\Desktop\prj\img\origin\냉동-멘보샤-600g-3개_썸네일.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">[든든] 냉동 멘보샤 600g-3개</h4>
            <p class="card-text">쉽게 조리할 수 있는 고급 중식요리</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">구매</a>
          </div>
        </div>
      </div>

	  <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="C:\Users\hyeon\OneDrive\Desktop\prj\img\origin\깐새우장--1kg-4개_썸네일.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">[든든] 깐새우장 1kg-4개</h4>
            <p class="card-text">짜지않아 맛있는 간장, 먹기쉽게 손질된 새우</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">구매</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="C:\Users\hyeon\OneDrive\Desktop\prj\img\origin\냉동-유부-슬라이스-1kg-4개_썸네일.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">[든든] 냉동 유부 슬라이스 1kg-4개</h4>
            <p class="card-text">영양가득 콩으로 만든 유부</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">구매</a>
          </div>
        </div>
      </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <br><br><br>
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">O&M &copy; 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


  
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
