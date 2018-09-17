<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="MemberInsert" class="member_insert_form" method="post">
		<div class="container">
			<div class="row" style="margin-top: 100px">
				<div class="col-md-12">
					<h1><i class="fa fa-user" aria-hidden="true">회원가입</i></h1>
				</div>
			</div>
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">아이디</i></span>
					</div>
					<input type="text" class="form-control" id="id" name="id" value=""
					 required="true" data-parsley-error-message="아이디를 입력하세요."
       				data-parsley-errors-container="div[id='idError']">
					<button type="button" id="userconfirm" class="btn btn-primary" name="confirm">중복확인</button> 
					<input type="hidden" id="confirmcheck" value="no">
				</div>
			</div>
			<div class="row" style="margin-top: 20px"> 
		    	<div class="col-md-12">
		     		<div id="idError"  style="color:#f00">
		     		</div> 
		    	</div>
		  	</div>
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">패스워드</i></span>
					</div>
					<input type="password" class="form-control" id="pw" name="pw" value=""
						required="true" data-parsley-error-message="비밀번호를 입력하세요!"
						data-parsley-errors-container="div[id='passwordError']">
				</div>
			</div>
			<div class="row" style="margin-top: 20px"> 
		    	<div class="col-md-12">
		     		<div id="passwordError" style="color:#f00">
		     		</div> 
		    	</div>
		  	</div>
			
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">전화번호</i></span>
					</div>
					<select name="phone1" class="form-control"
						style="width: 15%; text-align: center;">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
					</select>
					<label>-</label> 
					<input name="phone2" class="form-control" type="text" size="4" maxlength="4"
						style="width: 15%; text-align: center;">
					<label>-</label>	
						<input name="phone3" class="form-control" type="text" size="4" maxlength="4"
						style="width: 15%; text-align: center;">  
				</div>
			</div>
			
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">이메일</i></span>
					</div>
					<input type="text" class="form-control" id="email1" name="email1" value="">
					<label>@</label>
					<input type="text" class="form-control" id="email2" name="email2" value="">
				</div>
			</div>
			
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">주소</i></span>
					</div>
					<input type="text" class="form-control" id="addr1" name="addr1" value="">
					<input type="text" class="form-control" id="addr2" name="addr2" value="">
					<button type="button" onclick="zipcodeFind()" class="btn btn-primary" name="confirm">검색</button>
				</div>
			</div>
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<input type="text" class="form-control" id="addr3" name="addr3" value="">
				</div>
			</div>
			
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<button type="button" id="memberInsert" class="btn btn-primary" name="memberInsertUp" style="width:50%">등록</button>
					<button type="button" id="memberCancel" class="btn btn-warning" name="cancel" style="width:50%">취소</button>
				</div>
			</div>
		</div>
	</form>
	
	<!-- ID Confirm -->
			<div id="ConfirmModal" class="modal fade" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div id="modal-body"></div>
						<div class="modal-member-confirm-body">
							<p><span id="modal-msg">Some text in the modal.</span></p>
						</div>
						<div class="modal-member-confirm-footer">
							<div class="text-center">
								<button type="button" id="usebtn" class="btn btn-success modal_btn1"
									data-dismiss="modal">확인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
</body>
</html>