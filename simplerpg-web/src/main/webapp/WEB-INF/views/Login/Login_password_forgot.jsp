
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta name="decorator" content="Login_pass_forgot">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>비밀번호 찾기</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>비밀번호 찾기</h3>
			</div>
			<div>
				<p>
					<label>ID</label>
					<input class="w3-input" type="text" id="id" name="id" required value="">
				</p>
				<p>
					<label>Email</label>
					<input class="w3-input" type="text" id="email" name="email" required value="">
				</p>
				<p class="w3-center">
					<button type="button" id=findBtn class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">전송</button>
					<button type="button" onclick="history.go(-1);" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">돌아가기</button>
				</p>
			</div>
		</div>
	</div>
	
	<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#findBtn").click(function(){
			var id = document.getElementById("id").value;
			var email = document.getElementById("email").value;
			
			$.ajax({
				url : "PasswordFind",
				type : "POST",
				data : {
					id : id,
					email : email,
				},
				success : function(result) {
					alert(result);
				}
			});
		});
	})
</script>
</body>
</html>
