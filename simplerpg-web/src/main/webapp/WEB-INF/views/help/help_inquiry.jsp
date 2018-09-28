<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/parsely.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script><script src="http://t1.daumcdn.net/postcode/api/core/180619/1529384927473/180619.js" type="text/javascript" charset="UTF-8"></script>
<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
</head>
<body>
	<form action="helpinquiry" enctype="multipart request"
		class="help_inquiry" method="post">
		<h1 class="mt-4 mb-3">Simple RPG
        <small style="color: 	#008000"> INQUIRY</small>
      </h1>

      <ol class="breadcrumb" style="margin-top: 50px">
        <li class="breadcrumb-item">
          <a href="IndexForm">Home</a>
       / 고객센터 / 1:1 문의                             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      </ol><br>
		<div class="container">
			<div class="row" align="center">
				<div class="col-md-1"></div>
				<div class="card text-white bg-dark col-md-10 mb-2">
					<div class="card-body" align="center">
						<h3>1:1문의</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row" style="text-align: center; margin-top: 50px">
				<div class="col-md-1"></div>
				<div class="col-md-10" style="text-align: center">
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th style="text-align: center; width: 100px">작성자</th>
								<td><input style="text-align:center" id="help_inquiry_id" name="help_inquiry_id" 
									type="text" size="70" width="250" value="${sessionid}" readonly="readonly"></td>
							</tr>
							<tr>
								<th>제목</th>
								<td><input style="text-align:center" id="help_inquiry_title" name="help_inquiry_title" type="text"
									size="70"></td>
							</tr>
							<tr>
								<th><b>내용</b></th>
								<td><textarea id="help_inquiry_content" name="help_inquiry_content"  rows="10"
										cols="100"
										style="text-align: left; width: 800px; height: 400px"></textarea>
									<input type="button" class="btn btn-success" id="savebutton"
									value="작성"> <input type="button" class="btn btn-danger"
									id="returnbutton" value="취소	"></td>

							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>
		<hr>
	</form>
</body>
</html>