<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="decorator" content="freeboard_insert_forms">
 <title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
 <script src="resources/vendor/jquery/jquery.min.js"></script>
 <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="resources/ckeditor/ckeditor.js"></script>	
</head>
<body>
	<form action="FreeBoardInsertsubmit" enctype="multipart/form-data"
		method="post">
		<div class="row" style="text-align: center">
			<div class="col-md-12">
				<h1 class="mt-4 mb-3">
					Simple RPG <small style="color: #3CB371">Free Board</small>
				</h1>
				
				<div class="container">
				<ol class="breadcrumb" style="margin-top: 50px">
					<li class="breadcrumb-item"><a href="IndexForm">Home</a> /
						커뮤니티 / 자유게시판
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					
				</ol>
				</div>
			</div>
		</div>

		<div class="container">
		<div class="row" style="text-align: center; margin-top: 50px">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th width="300">작성자</th>
						<td width="300"><input name="f_writer" id="f_writer"
							type="text" size="45" value="${sessionid}" readonly="readonly"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input id="f_title" name="f_title" type="text" size="45"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="f_content" id="f_content"
								class="form-control ckeditor" rows="10" cols="100"
								style="width: 590px; height: 500px;">
								</textarea>
							<button type="submit" class="btn btn-warning" id="savebutton">작성</button>
							<a href="/itsteam4/FreeBoardForm"><input type="button"
								class="btn btn-danger" id="returnbutton" value="목록"></a></td>
					</tr>
				</tbody>
			</table>
		</div>
		</div>
		<hr>
	</form>
	<script>
		CKEDITOR.replace(
				'f_content',
				{
					width : 800,
					height : 500,
					filebrowserImageUploadUrl : '${pageContext.request.contextPath}/resources/fileupload'
				});

		CKEDITOR.on('dialogDefinition', function(ev) {
				var dialogName = ev.data.name;
				var dialogDefinition = ev.data.definition;

				switch (dialogName) {
				case 'image': //Image Properties dialog
					//dialogDefinition.removeContents('info');
					dialogDefinition.removeContents('Link');
					dialogDefinition.removeContents('advanced');
					break;
				}
			});
	</script>
</body>
</html>