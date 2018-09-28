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
							Simple RPG <small style="color: #4169E1">PHOTO</small>
						</h1>

						<ol class="breadcrumb" style="margin-top: 50px">
							<li class="breadcrumb-item"><a href="IndexForm">Home</a> /
								커뮤니티 / 스크린샷
						</ol>
					</div>
					<br />
					<div class="container">
						<div class="row" style="text-align: center; margin-top: 50px">
							<table class="table table-bordered" align="center">
								<tbody>
									<tr>
										<th width="300">작성자</th>
										<td width="300"><input type="text" size="45"></td>
									</tr>
									<tr>
										<th>제목</th>
										<td><input type="text" size="45"></td>
									</tr>
									<tr>
										<th height="300">사진 업로드</th>
										<td><input type="file" id="photo" name="imgfile"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
					</div>
			</form>
		</div>
	</section>
</body>
</html>