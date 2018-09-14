<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body onload="helpdeskReply.h_content.focus()">
	<form class="helpdeskReply" name="helpdeskReply"
		action="helpdeskReplyInsert" method="post"
		enctype="multipart/form-data" role="form" data-parsley-validate="true">
		<input type="hidden" name="h_ref" value="${helpdesk.h_seq}">
		<div class="container">
			<input type="hidden" id="helpdeskh_seq" name="h_seq"
				value="${helpdesk.h_seq}">

			<div class="row" style="margin-top: 50px">
				<div class="col-md-3"></div>
				<div class="col-md-6" style="text-align: center; color: #040044">
					<h1>
						<i class="fa fa-pencil-square-o" aria-hidden="true"></i> Reply 게시판
					</h1>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row" style="margin-top: 10px">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div>
						<div class="input-group">
							<span class="input-group-addon"> <i class="fa fa-envelope"
								aria-hidden="true"> </i> E-mail&nbsp&nbsp&nbsp&nbsp
							</span> <input name="h_email" id="h_email" value="${helpdesk.h_email}"
								readonly="readonly" class="form-control" type="email" size="20" />
						</div>
					</div>
				</div>
			</div>

			<div class="row" style="margin-top: 10px">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div>
						<div class="input-group">
							<span class="input-group-addon"> <i class="fa fa-user"
								aria-hidden="true"></i> 이 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 름
							</span> <input name="h_name" id="name" class="form-control"
								value="${helpdesk.h_name}" readonly="readonly" />
						</div>
					</div>
				</div>
			</div>

			<div class="row" style="margin-top: 10px">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div>
						<div class="input-group">
							<span class="input-group-addon"> <i
								class="fa fa-flag-checkered" aria-hidden="true"></i> 제
								&nbsp&nbsp&nbsp&nbsp&nbsp 목
							</span> <input name="h_title" id="h_title" class="form-control"
								type="text" size="100" autofocus value="${helpdesk.h_title}"
								required="true" data-parsley-error-message="글 제목을 입력하세요!"
								data-parsley-errors-container="div[id='titleError']" autofocus />
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div id="titleError"
						style="color: #f00; text-align: left; margin-left: 10%"></div>
				</div>
			</div>

			<div class="row" style="margin-top: 10px">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div>
						<div class="input-group">
							<span class="input-group-addon"> <i
								class="fa fa-paperclip" aria-hidden="true"></i> 첨부파일
							</span> <input type="file" name="file" class="form-control"
								style="font-size: 10px" />
						</div>
					</div>
				</div>
			</div>

			<div class="row" style="margin-top: 10px">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div>
						<div class="input-group">
							<span class="input-group-addon"> <i
								class="fa fa-commenting" aria-hidden="true"></i>내&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp용&nbsp
							</span>
							<textarea id="h_content" name="h_content" type="text"
								class="form-control ckeditor" rows="5" autocomplete="off"
								style="text-align: left"></textarea>
							<script type="text/javascript">
								CKEDITOR.replace('h_content');
							</script>
						</div>
					</div>
				</div>
			</div>

			<div class="row" style="margin-top: 30px">
				<div class="col-md-3"></div>
				<div class="col-md-6" style="text-align: center">
					<div>
						<button type="submit" class="btn btn-success">
							<i class="fa fa-floppy-o" aria-hidden="true"></i>
							&nbsp&nbspSave&nbsp&nbsp
						</button>
						<button type="reset" class="btn btn-info">
							<i class="fa fa-eraser" aria-hidden="true"></i> Reset
						</button>
						<button type="button" class="btn btn-danger"
							onclick="location.href='index'">
							<i class="fa fa-reply" aria-hidden="true"></i> Cancel
						</button>
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

