<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="resources/css/main-slide.css" rel="stylesheet">
</head>
<body>
	<form  method="post" action="InGameForm">
	  <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="IndexForm">Simple RPG</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive" style="position: absolute;right:20px">
          <ul class="navbar-nav ml-auto" >
            <li class="nav-item">
              <a class="nav-link" href="about.html">소식</a>
            </li>
            
           <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                		개임소개
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="gameguideform">게임배경 소개</a>
                <a class="dropdown-item" href="itemguideform">아이템 소개</a>
                <a class="dropdown-item" href="monsterguideform">몬스터 소개</a>
              </div>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                		랭킹
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="dbinserform">DB값 입력</a>
                <a class="dropdown-item" href="rankform">게임 순위</a>
                <a class="dropdown-item" href="rankinfoform">랭킹 정보</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                	커뮤니티
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="portfolio-1-col.html">스크린샷</a>
                <a class="dropdown-item" href="portfolio-2-col.html">동영상</a>
                <a class="dropdown-item" href="portfolio-3-col.html">자유게시판</a>
                <a class="dropdown-item" href="portfolio-4-col.html">팁/노하우</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                		고객센터
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="blog-home-1.html">자주묻는질문</a>
                <a class="dropdown-item" href="blog-home-2.html">1:1문의</a>
                <a class="dropdown-item" href="blog-post.html">보안 센터</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Other Pages
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="full-width.html">Full Width Page</a>
                <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
                <a class="dropdown-item" href="faq.html">FAQ</a>
                <a class="dropdown-item" href="404.html">404</a>
                <a class="dropdown-item" href="pricing.html">Pricing Table</a>
              </div>
            </li>
            <li class="nav-item dropdown">
            	<button type="button" id="loginbutton" class="btn btn-primary">로그인</button>
            </li>
          </ul>
          </div>
        </div>
    </nav>
    <!-- SLIDE SECTION START -->
    <div class="slideshow-container" >
    		<div class="mySlides fade">
			  <img src="resources/image/mainpage/slide1.jpg" style="width:100%;">
			</div>
			<div class="mySlides fade">
			  <img src="resources/image/mainpage/slide2.jpg" style="width:100%">
			</div>
			<div class="mySlides fade">
			  <img src="resources/image/mainpage/slide3.jpg" style="width:100%">
			</div>
			<div class="mySlides fade">
			  <img src="resources/image/mainpage/slide4.jpg" style="width:100%">
			</div>
			<div >
				<!-- <a href="#" style="width:289px; height:152px;">
					<img class="" src="resources/image/mainpage/start_btn.jpg" 
			  		style="width:289px; height:152px; position:absolute; top:130px; left:1150px; 
			  		overflow:hidden;">
				</a> -->
					<input id="gid" name="gid" type="text" style="display:none;">
					<button id="startbtn" type="submit" style="background:url('resources/image/mainpage/start_btn.jpg');
					width:289px; height:152px; 
					position:absolute; top:130px; left:1150px; overflow:hidden;border:0; outline:0;
					cursor:pointer; "></button>
				
			</div>
			<div style="text-align:center; color:#5F00FF; display:none; ">
			  <span class="dot"></span> 
			  <span class="dot"></span> 
			  <span class="dot"></span> 
			  <span class="dot"></span> 
			</div>
	</div>
	<script src="resources/js/mainslide.js"></script>
	<!-- SLIDE SECTION END -->
    </form>
</body>
</html>