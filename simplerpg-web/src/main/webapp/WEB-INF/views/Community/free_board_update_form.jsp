<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="decorator" content="freeboard_update_forms">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Insert title here</title>
 <!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<title>Insert title here</title>
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/ckeditor/ckeditor.js"></script>
</head>
<body>
	<form action="FreeBoardUpdates" enctype="multipart/form-data" method="post">
	<input type="hidden" id="f_date" name="f_date" value="${boards.f_date}">
	<input type="hidden" id="f_hit" name="f_hit" value="${boards.f_hit}">
	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="card text-white bg-dark col-md-11 mb-3" style="right: 80px">
  				<div class="card-body">
    				<h3>글수정</h3>
  				</div>
			</div>
		</div>
		<div class="row" style="text-align: center;margin-top: 80px">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th width="300">작성자</th>
						<td width="300"><input name="f_writer" id="f_writer" type="text" size="45" value="${boards.f_writer}" readonly="readonly"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input id="f_title" name="f_title" type="text" size="45" value="${boards.f_title}"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
								<textarea name="f_content" id="f_content" rows="10"
									cols="100" style="width: 590px; height: 500px;">${boards.f_content}</textarea>
								<button class="btn btn-warning" id="frupdatebutton">수정</button>
								<a href="/itsteam4/FreeBoardForm"><input type="button" class="btn btn-danger" id="returnbutton" value="목록"></a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
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