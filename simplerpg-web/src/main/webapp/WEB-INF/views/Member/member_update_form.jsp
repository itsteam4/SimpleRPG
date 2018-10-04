<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<h1><i class="fa fa-user" aria-hidden="true">정보 수정</i></h1>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">아이디</i></span>
					</div>
					<input type="text" class="form-control" id="id" name="id" value="${members.id}"
					 required="true" data-parsley-error-message="아이디를 입력하세요."
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
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">패스워드</i></span>
					</div>
					<input type="password" class="form-control" id="pw" name="pw" value="${members.pw}"
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
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">이메일</i></span>
					</div>
					<input type="text" class="form-control" id="email" name="email" value="${members.email}">
				</div>
			</div>
			
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 100px"><i class="fa fa-id-card-o" aria-hidden="true">주소</i></span>
					</div>
					<input type="text" class="form-control" id="addr1" name="addr1" value="${members.addr1}">
					<input type="text" class="form-control" id="addr2" name="addr2" value="${members.addr2}">
					<button type="button" onclick="zipcodeFind()" class="btn btn-primary" name="confirm">검색</button>
				</div>
			</div>
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<input type="text" class="form-control" id="addr3" name="addr3" value="${members.addr3}">
				</div>
			</div>
			<div class="row" style="margin-top: 50px">
				<div class="input-group col-md-12">
					<button type="submit" id="memberUpdateButton" class="btn btn-primary" name="memberUpdateButton" style="width:50%">수정</button>
					<button type="button"  onclick="history.go(-1);" id="memberUpdateCancel" class="btn btn-warning" name="cancel" style="width:50%">취소</button>
				</div>
			</div>
	</form>
	
</body>
</html>