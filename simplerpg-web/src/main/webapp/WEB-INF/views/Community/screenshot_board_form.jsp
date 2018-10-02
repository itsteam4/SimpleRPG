<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<section>
		<div class="container">
			<form>
				<div class="row">
					<div class="gallery col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<h1 class="mt-4 mb-3">
							Simple RPG <small style="color: #2F4F4F">PHOTO</small>
						</h1>

						<ol class="breadcrumb" style="margin-top: 50px">
							<li class="breadcrumb-item"><a href="IndexForm">Home</a> /
								커뮤니티 / 스크린샷
						</ol>
					</div>
					<br />
					<div class="row" style="margin-top: 50px">
						<div class="col-lg-6 portfolio-item">
							<div class="card h-100">
								<img class="card-img-top" src="resources/image/guide/000.jpg"
									width="550px" height="315px" alt="">
								<div class="card-body">
									<h4 class="card-title" style="color: #2F4F4F">첫 사냥 기념 샷</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-6 portfolio-item">
							<div class="card h-100">
								<img class="card-img-top" src="resources/image/guide/001.jpg"
									width="550px" height="315px" alt="">
								<div class="card-body">
									<h4 class="card-title" style="color: #2F4F4F">
									슬라임 소드/쉴드 획득 기념 샷
									</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-6 portfolio-item">
							<div class="card h-100">
								<img class="card-img-top" src="resources/image/guide/005.jpg"
									width="550px" height="315px" alt="">
								<div class="card-body">
									<h4 class="card-title" style="color: #2F4F4F">
									슬라임, 녹색 고블린이랑 샷
									 </h4>
								</div>
							</div>
						</div>
						<div class="col-lg-6 portfolio-item">
							<div class="card h-100">
								<img class="card-img-top" src="resources/image/guide/002.jpg"
									width="550px" height="315px" alt="">
								<div class="card-body">
									<h4 class="card-title" style="color: #2F4F4F">
									붉은 고블린 인증샷
									</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-6 portfolio-item">
							<div class="card h-100">
								<img class="card-img-top" src="resources/image/guide/003.jpg"
									width="550px" height="315px" alt="">
								<div class="card-body">
									<h4 class="card-title" style="color: #2F4F4F">
									요정 도우미들이랑 같이 샷
									</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-6 portfolio-item">
							<div class="card h-100">
								<img class="card-img-top" src="resources/image/guide/004.jpg"
									width="550px" height="315px" alt="">
								<div class="card-body">
									<h4 class="card-title" style="color: #2F4F4F">
									끝판왕이랑 한 컷 샷
									</h4>
								</div>
							</div>
						</div>
					</div>
					<!-- /.row -->
					<!-- Pagination -->
					<hr>
				</div>
				<!-- /.container -->
				<%-- <div class="row" style="margin-top: 80px">
					 <c:if test="${sessionid != null}">
						<div class="col" align="right">
							<button type="button" id="ScreenshotInsertForm"
								name="ScreenshotInsertForm"
								class="btn btn-default filter-button" data-filter="all">글쓰기</button>
						</div>
					</c:if> 
				</div> --%>
				<ul class="pagination justify-content-center">
					<li class="page-item"></li>
					<li class="page-item"><a class="page-link" href="#">맨위로 가기</a>
					</li>
				</ul>
				<hr>
			</form>
		</div>
	</section>
</body>
</html>