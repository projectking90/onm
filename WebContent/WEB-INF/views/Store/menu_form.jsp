<!-- JSP 기술의 한 종류인 Page Directive를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고, -->
<!-- 이 문서 안의 데이터는 UTF-8방식으로 인코딩한다라고 설정함 -->
<!-- 현재 이 JSP 페이지는 UTF-8 방식으로 인코딩한다. -->
<!-- UTF-8 인코딩 방식은 한글을 포함 전 세계 모든 문자열을 부호화할 수 있는 방법이다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	
	
	
		<meta charset="UTF-8">
		
  		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  		<meta name="description" content="">
 		<meta name="author" content="">
		<title >메뉴등록</title>


  		<!-- Custom fonts for this theme -->
		<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

		<!-- Theme CSS -->
		<link href="css/freelancer.min.css" rel="stylesheet">
		
		
		
		
	</head>
<body>
		
		


	
<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top" >메뉴등록</a>
      <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">분류</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">상세</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">가격</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Masthead -->
  <header class="masthead bg-primary text-white text-center">
    <div class="container d-flex align-items-center flex-column">

		
      <!-- Masthead Heading -->
      <h1 class="masthead-heading text-uppercase mb-0">메뉴등록</h1>

      <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Masthead Subheading -->
      <p class="masthead-subheading font-weight-light mb-0">메뉴를 등록해 주세요</p>

    </div>
  </header>

  <!-- 분류 Section -->
  <section class="page-section portfolio" id="portfolio">
    <div class="container">

      <!-- 분류 Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">분류</h2>

      <!-- Icon Divider -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- 분류 Grid Items -->
      <div class="row">

        <!-- 분류 Item 1 -->
        <div class="col-md-6 col-lg-4">
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/koreanfood.png" alt="">
          </div>
        </div>

        <!-- 분류 Item 2 -->
        <div class="col-md-6 col-lg-4">
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal2">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/japanesefood.jpg" alt="">
          </div>
        </div>

        <!-- 분류 Item 3 -->
        <div class="col-md-6 col-lg-4">
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal3">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/chinesefood.jpg" alt="">
          </div>
        </div>

        <!-- 분류 Item 4 -->
        <div class="col-md-6 col-lg-4">
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal4">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/yfood.jpg" alt="">
          </div>
        </div>

        <!-- 분류 Item 5 -->
        <div class="col-md-6 col-lg-4">
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal5">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/bfood.jpg" alt="">
          </div>
        </div>

        <!-- 분류 Item 6 -->
        <div class="col-md-6 col-lg-4">
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal6">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/dfood.jpg" alt="">
          </div>
        </div>

      </div>
      <!-- /.row -->

    </div>
  </section>

  <!-- 상세 Section -->
  <section class="page-section bg-primary text-white mb-0" id="about">
    <div class="container">

      <!-- 상세 Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-white">상세</h2>

      <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>


<center>
      <!-- 상세 Section Content -->
      <div class="row">
        <div class="col-lg-4 ml-auto">
          <p class="lead">이러이러 합니다</p>
        </div>
        <div class="col-lg-4 mr-auto">
          <p class="lead">저러저러 합니다</p>
        </div>
      </div>
</center>


    </div>
  </section>

  <!-- 가격 Section -->
  <section class="page-section" id="contact">
    <div class="container">

      <!-- 가격 Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">가격</h2>

      <!-- Icon Divider -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- 가격 Section Form -->
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <form name="sentMessage" id="contactForm" novalidate="novalidate">

            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>price</label>
                <input class="form-control" id="price" type="tel" placeholder="price" required="required" data-validation-required-message="가격을 입력해 주세요.">
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <br>
            <div id="success"></div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">Send</button>
            </div>
          </form>
        </div>
      </div>

    </div>
  </section>

  <!-- Footer -->
  <footer class="footer text-center">
    <div class="container">
      <div class="row">


      </div>
    </div>
  </footer>

  <!-- Copyright Section -->


  <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
  <div class="scroll-to-top d-lg-none position-fixed ">
    <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
      <i class="fa fa-chevron-up"></i>
    </a>
  </div>

  <!-- 분류 Modals -->

  <!-- 분류 Modal 1 -->
  <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- 분류 Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">한식</h2>
                <!-- Icon Divider -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- 분류 Modal - Image -->
                <img class="img-fluid rounded mb-5" src="img/portfolio/koreanfood.png" alt="">
                <!-- 분류 Modal - Text -->
                <button class="btn btn-primary" href="#" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  닫기
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 분류 Modal 2 -->
  <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-labelledby="portfolioModal2Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- 분류 Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">일식</h2>
                <!-- Icon Divider -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- 분류 Modal - Image -->
                <img class="img-fluid rounded mb-5" src="img/portfolio/japanesefood.jpg" alt="">
                <!-- 분류 Modal - Text -->
                <button class="btn btn-primary" href="#" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  닫기
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 분류 Modal 3 -->
  <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-labelledby="portfolioModal3Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- 분류 Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">중식</h2>
                <!-- Icon Divider -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- 분류 Modal - Image -->
                <img class="img-fluid rounded mb-5" src="img/portfolio/chinesefood.jpg" alt="">

                <button class="btn btn-primary" href="#" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  닫기
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 분류 Modal 4 -->
  <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-labelledby="portfolioModal4Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- 분류 Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">양식</h2>
                <!-- Icon Divider -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- 분류 Modal - Image -->
                <img class="img-fluid rounded mb-5" src="img/portfolio/yfood.jpg" alt="">

                <button class="btn btn-primary" href="#" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  닫기
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 분류 Modal 5 -->
  <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-labelledby="portfolioModal5Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- 분류 Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">분식</h2>
                <!-- Icon Divider -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- 분류 Modal - Image -->
                <img class="img-fluid rounded mb-5" src="img/portfolio/bfood.jpg" alt="">

                <button class="btn btn-primary" href="#" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  닫기
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 분류 Modal 6 -->
  <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-labelledby="portfolioModal6Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- 분류 Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">디저트</h2>
                <!-- Icon Divider -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- 분류 Modal - Image -->
                <img class="img-fluid rounded mb-5" src="img/portfolio/dfood.jpg" alt="">

                <button class="btn btn-primary" href="#" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  닫기
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- 가격 Form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/freelancer.min.js"></script>	
		
		
		
	</body>
</html>