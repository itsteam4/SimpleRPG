<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body onload="init()">
	<form class="helpdeskupdate_form" name="helpdeskupdate_form"
		action="helpdeskUpdate" method="post" enctype="multipart/form-data"
		role="form" data-parsley-validate="true">
		<div class="container">
			<input type="hidden" id="helpdeskh_seq" name="h_seq"
				value="${helpdesk.h_seq}"> <input type="hidden" id="h_ref"
				name="h_ref" value="${helpdesk.h_ref}">

			<div class="row" style="margin-top: 50px">
				<div class="col-md-3"></div>
				<div class="col-md-6" style="text-align: center; color: #040044">
					<h1>
						<i class="fa fa-pencil-square-o" aria-hidden="true"></i> 게시글
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
							</span> <input name="h_name" id="h_name" class="form-control"
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
							</span>
							<c:choose>
								<c:when test="${sessionemail==helpdesk.h_email}">
									<input name="h_title" id="h_title" class="form-control"
										type="text" size="100" value="${helpdesk.h_title}"
										required="true" data-parsley-error-message="글 제목을 입력하세요!"
										data-parsley-errors-container="div[id='titleError']" />
								</c:when>


								<c:otherwise>
									<input name="h_title" id="h_title" class="form-control"
										type="text" size="100" value="${helpdesk.h_title}"
										required="true" readonly="readonly"
										data-parsley-error-message="글 제목을 입력하세요!"
										data-parsley-errors-container="div[id='titleError']" />
								</c:otherwise>
							</c:choose>
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
								style="font-size: 10px" value="${helpdesk.h_attach}" /> <input
								type="text" name="h_beforeattach" class="form-control"
								style="font-size: 10px" value="${helpdesk.h_attach}" />
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
								class="form-control" rows="5" autocomplete="off"
								style="text-align: left">${helpdesk.h_content}</textarea>
							<script type="text/javascript">
                        CKEDITOR.replace('h_content');
                     </script>
						</div>
					</div>
				</div>
			</div>

			<div class="row" style="margin-top: 10px">
				<div class="col-md-3"></div>
				<div class="col-md-6" style="text-align: center">
					<div>
						<button type="button"
							onclick="location.href='helpdeskPageList?find'"
							class="btn btn-info">글목록</button>

						<c:if
							test="${sessionemail == 'admin@a.com' || sessionemail == helpdesk.h_email}">
							<button name="helpdeskupdate" class="btn btn-success">글수정</button>
							<button type="button" id="helpdeskdeletebtn"
								class="btn btn-danger">글삭제</button>
						</c:if>
						<c:if test="${sessionemail != null}">
							<c:choose>
								<c:when test="${helpdesk.h_step==0}">
									<button type="button" name="helpdeskreply"
										onclick="location.href='helpdeskReply?h_title=${helpdesk.h_title}&h_seq=${helpdesk.h_seq}'"
										class="btn btn-warning">댓글</button>
								</c:when>
								<c:otherwise>
									<button type="button" name="helpdeskreply"
										onclick="location.href='helpdeskReply?h_title=${helpdesk.h_title}&h_seq=${helpdesk.h_ref}'"
										class="btn btn-warning">댓글</button>
								</c:otherwise>
							</c:choose>
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
		<div id="helpdeskDeleteModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">삭제 확인</h4>
					</div>
					<div class="modal-body">
						<p>
							<span id="modalmsg"> Some text in modal</span>
					</div>
					<div class="modal-footer" style="text-align: center">
						<button type="button" id="helpdeskdelbtn" class="btn btn-danger"
							data-dismiss="modal">삭제</button>
						<button type="button" id="cancelbtn" class="btn btn-success"
							data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>