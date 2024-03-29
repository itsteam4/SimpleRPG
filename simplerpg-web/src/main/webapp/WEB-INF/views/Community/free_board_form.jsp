<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="FreeBoardForm" method="GET">
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
		<div class="row" style="margin-top: 50px; text-align: center">
			<div class="col-md-1"></div>
			<div class="col-md-12">
				<table class="table table-hover">
					<thead>
						<tr>
							<th width="150" scope="col">번호</th>
							<th width="150" scope="col">작성자</th>
							<th width="300" scope="col">제목</th>
							<th width="150" scope="col">작성일자</th>
							<th width="150" scope="col">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="boards" items="${boards}">
							<tr>
								<td>${boards.f_no}</td>
								<td>${boards.f_writer}</td>
								<td><a href="freeboarddetailform?f_no=${boards.f_no}">${boards.f_title}</a></td>
								<td>${boards.f_date}</td>
								<td>${boards.f_hit}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-1"></div>
		</div>
		<div class="row" style="margin-top: 50px">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<c:forEach var="page" items="${pages}">
					<a href="FreeboardPageListSelected?page=${page}">[${page}]</a>&nbsp
		 				</c:forEach>
			</div>
			<div class="col-md-1"></div>
		</div>
		<div class="row" style="margin-top: 50px">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="input-group">
					<input type="text" name="find" id="find" value="${find}">
					<button type="submit" class="btn btn-primary">검색</button>
				</div>
			</div>

			<div class="col-md-1">
				<c:if test="${sessionid != null}">
					<button type="button" id="freeboardButtons" class="btn btn-dark">글쓰기</button>
				</c:if>
			</div>
		</div>
		<hr>
	</form>
</body>
</html>