<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="decorator" content="loginfail" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
 <!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">
	body {
	background-image: url('resources/image/jungles.jpg');
}
</style>

</head>
<body>
	<form action="login" id="login_form" method="post">
		<div class="container">
			<div class="row" style="margin-top:100px">
				<div class="col-md-4"></div>
				<div class="col-md-4" style="text-align: center">
					<h1 style="size:50px"><font color="#FF0000">Login Fail</font></h1>
				</div>
				<div class="col-md-4"></div>
			</div>
			
			<div class="row" style="margin-top:80px">
				<div class="col-md-2"></div>
				<div class="col-md-8">
				<div class="input-group">
					<span class="input-group-addon" style="text-align:center">
						<h1><i class="fa fa-user-circle-o" aria-hidden="true">ID:</i></h1>
					</span>
					<input name="id" id="id" class="form-control" type="text" size="40"
							maxlength="30"/>
				</div>
				</div>
			</div>
				<div class="row" style="margin-top:30px">
				<div class="col-md-2"></div>
				<div class="col-md-8">
				<div class="input-group">
					<span class="input-group-addon" style="text-align:center;">
						<h1><i class="fa fa-key" aria-hidden="true">PW:</i></h1>
					</span>
					<input type="password" name="pw" id="pw" class="form-control" type="text" size="40"
							maxlength="30"/>		
				</div>
			</div>
			</div>
		</div>					
		<div class="row" style="margin-top:30px">  
		 	<div class="col-md-2"></div>
		 	<div class="col-md-8" style="text-align:center">
		 		<button id="login" class="btn btn-primary" style="width:80%"><i class="fa fa-sign-in" aria-hidden="true"></i> &nbsp&nbsp Login</button>
		 	</div>
		 	<div class="col-md-2"></div>
		 </div>
		 
		 <div class="row" style="margin-top:10px">  
		 	<div class="col-md-2"></div>
		 	<div class="col-md-8" style="text-align:center">
		 	    <span class="col-md-3 text-left">
		 	    	<a href="MemberInsertForm">
		 	    	<i class="fa fa-plus-square" aria-hidden="true"></i> 회원가입
		 	    	</a></span>
	 			<span  id="passfind" class="col-md-6 text-center">
		 	    	<i class="fa fa-search" aria-hidden="true"></i> 
		 	    	<a href="#">비밀번호찾기</a> 
	 			</span>
		 	</div>
		</div>			
	</form>
</body>
</html>