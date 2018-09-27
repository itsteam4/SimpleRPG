<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<h1 class="gallery-title">사진 갤러리</h1>
			</div>
			<br />
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation">
				<img src="resources/image/guide/death.jpg" class="img-responsive">
			</div>

			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray">
				<img src="http://fakeimg.pl/365x365/" class="img-responsive">
			</div>

			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation">
				<img src="http://fakeimg.pl/365x365/" class="img-responsive">
			</div>

			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray">
				<img src="http://fakeimg.pl/365x365/" class="img-responsive">
			</div>

			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation">
				<img src="http://fakeimg.pl/365x365/" class="img-responsive">
			</div>

			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation">
				<img src="http://fakeimg.pl/365x365/" class="img-responsive">
			</div>

		</div>
		<div class="row" style="margin-top: 80px">
			<div class="col" align="center">
				리스트
			</div>
		</div>
		<div class="row" style="margin-top:80px">
				<div class="col" align="center">
					<input type="text" id="screenserch" placeholder="입력해주세요.">
					<button type="button" class="btn btn-info">검색</button>
				</div>
				
				<c:if test="${sessionid != null}">
				<div class="col" align="right">
					<button type="button" id="ScreenshotInsertForm" name="ScreenshotInsertForm" class="btn btn-default filter-button" data-filter="all">글쓰기</button>
				</div>	
		</c:if>
		
		</div>
		</form>
	</div>
	</section>
</body>
</html>