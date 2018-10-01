<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<%-- <content tag="local_script"> --%>
<!--    <script type="text/javascript"> -->
<!--          alert(100);  -->
<!-- </script>  -->
<%-- </content> --%>
</head>

<body>
	<form id="board_detail" name="board_detail" action="boardUpdate"
		method="post" enctype="multipart/form-data">
		<h1 class="mt-4 mb-3">
			Simple RPG <small style="color: #FF0000">NOTICE</small>
		</h1>
		<ol class="breadcrumb" style="margin-top: 50px">
			<li class="breadcrumb-item"><a href="IndexForm">Home</a> / 고객센터
				/ 공지사항
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		</ol>
		<div class="container">

			<div class="container" style="text-align: center">
				<input type="hidden" id="b_seq" name="b_seq" value="${board.b_seq}">
				<input type="hidden" id="b_ref" name="b_ref" value="${board.b_ref}">
				<div style="margin-top: 30px"></div>
				<div class="row" style="margin-top: 30px">
					<div class="col-md-3"></div>
					<div class="input-group mb-3 col-md-6 ">
						<div class="input-group-prepend">
							<span class="input-group-text" style="width: 150px"><i
								\ style="font-size: 17px"> I D</i></span>
						</div>
						<input type="text" class="form-control" id="b_id" name="b_id"
							value="${board.b_id}" readonly>
					</div>
					<div class="col-md-3"></div>
				</div>
				<div class="row">
					<div class="col-md-3"></div>
					<div class="input-group mb-3 col-md-6 ">
						<c:choose>
							<c:when test="${sessionid == board.b_id || sessionid == 'a@a.a'}">
								<div class="input-group-prepend">
									<span class="input-group-text" style="width: 150px"><i
										class="fas fa-user-lock" style="font-size: 17px"> 제목</i></span>
								</div>
								<input type="text" id="b_title" name="b_title"
									value="${board.b_title}" class="form-control" required="true">
							</c:when>
							<c:otherwise>
								<div class="input-group-prepend">
									<span class="input-group-text" style="width: 150px"><i
										class="fas fa-user-lock" style="font-size: 17px"> 제목</i></span>
								</div>
								<input type="text" id="b_title" name="b_title"
									value="${board.b_title}" class="form-control"
									style="background-color: #fff" required="true" readonly>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="col-md-3"></div>
				</div>
				<div class="row" style="margin-top: 10px">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div>
							<div class="input-group">
								<span class="input-group-addon"> <i
									class="fa fa-commenting" aria-hidden="true"></i>내&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp용&nbsp
								</span>
								<textarea id="b_content" name="b_content" type="text"
									class="form-control" rows="5" autocomplete="off"
									style="text-align: left">${board.b_content}</textarea>
								<script type="text/javascript">
									CKEDITOR.replace('b_content');
								</script>
							</div>
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 10px">
					<div class="col-md-3"></div>
					<div class="col-md-6" style="text-align: center">
						<div>
							<a href="boardpagelist"><button type="button"
									class="btn btn-info">글목록</button></a>
							<c:if test="${ sessionid == board.b_id}">
								<button name="boardupdate" class="btn btn-success">글수정</button>
								<a href="boardDelete?b_seq=${board.b_seq}"><input
									type="button" class="btn btn-danger" id="boardDeleteButton"
									value="삭제"></a>
							</c:if>
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 30px">
					<div class="col-md-3"></div>
					<div class="col-md-6" style="text-align: center">
						<div class="alert alert-danger" id="alertmsg" role="alert"
							style="display: none;">
							<a href="#" class="close" data-dismiss="alert">&times;</a> <span
								id="msg">Message of the Alert</span>
						</div>
					</div>
				</div>

			</div>
	</form>
</body>
</html>