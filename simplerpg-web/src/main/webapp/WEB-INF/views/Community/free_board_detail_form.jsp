<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="decorator" content="freeboard_detail_forms">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>게시글  페이지</title>
<!-- Bootstrap core CSS -->
    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/screenshot/screen.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="resources/css/modern-business.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<!-- jQuery -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/ckeditor/ckeditor.js"></script>
</head>
<body>
	<form action="FreeDetailForms" class="freeboard_detail_form"
		method="post">
		<div class="row" style="text-align: center">
			<div class="col-md-12">
				<h1 class="mt-4 mb-3">
					Simple RPG <small style="color: #3CB371">Free Board</small>
				</h1>

				<ol class="breadcrumb" style="margin-top: 50px">
					<li class="breadcrumb-item"><a href="IndexForm">Home</a> /
						커뮤니티 / 자유게시판
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					
				</ol>
			</div>
		</div>
		<div class="row" style="text-align: center; margin-top: 50px">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<th width="300">작성자</th>
							<td width="300"><input name="f_writer" id="f_writer"
								type="text" size="45" value="${boards.f_writer}"
								readonly="readonly"></td>
						</tr>
						<tr>
							<th width="300">작성일자</th>
							<td width="300"><input name="f_date" id="f_date" type="text"
								size="45" value="${boards.f_date}" readonly="readonly"></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input id="f_title" name="f_title" type="text" size="45"
								value="${boards.f_title}" readonly="readonly"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td align="center" height="350">
								<div>${boards.f_content}</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="row">
				<%@include file="../Community/free_board_comment_form.jsp" %>
			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10" align="center">
					<c:choose>
						<c:when test="${boards.f_writer == sessionid }">
							<a href="FreeBoardUpdateForm?f_no=${boards.f_no}"><input
								type="button" class="btn btn-Dark" value="수정"></a>
							<a href="FreeBoardDelete?f_no=${boards.f_no}"><input
								type="button" class="btn btn-danger" id="FreeBoardDeleteButton"
								value="삭제"></a>
							<a href="/itsteam4/FreeBoardForm"><input type="button"
								class="btn btn-info" id="FreeboardReturn" value="목록"></a>
						</c:when>
						<c:otherwise>
							<a href="/itsteam4/FreeBoardForm"><input type="button"
								class="btn btn-info" id="FreeBoardReturn" value="목록"></a>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="col-md-1"></div>
			</div>
		<hr>
	</form>
</body>
</html>