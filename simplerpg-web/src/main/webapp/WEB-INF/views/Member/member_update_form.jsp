<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="MemberUpdate" class="member_update_form" method="post">
		<div class="container">
			<div class="row" style="margin-top: 100px">
				<div class="col-md-12">
				<h1><i class="fa fa-user" aria-hidden="true">���� ����</i></h1>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">���̵�</i></span>
					</div>
					<input type="text" class="form-control" id="id" name="id" value="${members.id}"
					 required="true" data-parsley-error-message="���̵� �Է��ϼ���."
       				data-parsley-errors-container="div[id='idError']" readonly="readonly">
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
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">�н�����</i></span>
					</div>
					<input type="password" class="form-control" id="pw" name="pw" value="${members.pw}"
						required="true" data-parsley-error-message="��й�ȣ�� �Է��ϼ���!"
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
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">��ȭ��ȣ</i></span>
					</div>
					<select id= "phone1" name="phone1" class="form-control"
						style="width: 15%; text-align: center;">
						<option value="010" <c:if test="${members.phone1 == '010'}">selected</c:if> >010 </option>
						<option value="011" <c:if test="${members.phone1 == '011'}">selected</c:if> >011 </option>
						<option value="016" <c:if test="${members.phone1 == '016'}">selected</c:if> >016 </option>
						<option value="017" <c:if test="${members.phone1 == '017'}">selected</c:if> >017 </option>
					</select>
					<label>-</label> 
					<input name="phone2" class="form-control" type="text" size="4" maxlength="4"
						style="width: 15%; text-align: center;" value="${members.phone2}">
					<label>-</label>	
						<input name="phone3" class="form-control" type="text" size="4" maxlength="4"
						style="width: 15%; text-align: center;" value="${members.phone3}">  
				</div>
			</div>
			
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">�̸���</i></span>
					</div>
					<input type="text" class="form-control" id="email1" name="email1" value="${members.email1}">
					<label>@</label>
					<input type="text" class="form-control" id="email2" name="email2" value="${members.email2}">
				</div>
			</div>
			
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">�ּ�</i></span>
					</div>
					<input type="text" class="form-control" id="addr1" name="addr1" value="${members.addr1}">
					<input type="text" class="form-control" id="addr2" name="addr2" value="${members.addr2}">
					<button type="button" onclick="zipcodeFind()" class="btn btn-primary" name="confirm">�˻�</button>
				</div>
			</div>
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<input type="text" class="form-control" id="addr3" name="addr3" value="${members.addr3}">
				</div>
			</div>
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<button type="submit" id="memberUpdateButton" class="btn btn-primary" name="memberUpdateButton" style="width:50%">����</button>
					<button type="button" id="memberUpdateCancel" class="btn btn-warning" name="cancel" style="width:50%">���</button>
				</div>
			</div>
	</form>
	
</body>
</html>