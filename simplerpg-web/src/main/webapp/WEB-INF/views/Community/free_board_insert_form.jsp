<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="decorator" content="freeboard_insert_forms"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
 <!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript" src="resources/smarteditor/js/HuskyEZCreator.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	var obj = [];

	$( document ).ready(function() {
		//스마트에디터 프레임생성
	    nhn.husky.EZCreator.createInIFrame({
	        oAppRef: obj,
	        elPlaceHolder: "f_content",
	        sSkinURI: "resources/smarteditor/SmartEditor2Skin.html",
	        fCreator: "createSEditor2",
	        htParams : {
	            // 툴바 사용 여부
	            bUseToolbar : true,            
	            // 입력창 크기 조절바 사용 여부
	            bUseVerticalResizer : true,    
	            // 모드 탭(Editor | HTML | TEXT) 사용 여부
	            bUseModeChanger : true,               
	        }
	    });
	
	  //전송버튼
	    $("#savebutton").click(function(){
	        //id가 smarteditor인 textarea에 에디터에서 대입
	        obj.getById["f_content"].exec("UPDATE_CONTENTS_FIELD", []);
	        //폼 submit
	        $("#frm").submit();
	    });
	});

	/*
	$(function(){
        //전역변수
        var obj = [];
        //스마트에디터 프레임생성
        nhn.husky.EZCreator.createInIFrame({
            oAppRef: obj,
            elPlaceHolder: "f_content",
            sSkinURI: "resources/smarteditor/SmartEditor2Skin.html",
            htParams : {
                // 툴바 사용 여부
                bUseToolbar : true,            
                // 입력창 크기 조절바 사용 여부
                bUseVerticalResizer : true,    
                // 모드 탭(Editor | HTML | TEXT) 사용 여부
                bUseModeChanger : true,
                fCreator: "createSEditor2"   
            }
        });
        //전송버튼
        $("#savebutton").click(function(){
            //id가 smarteditor인 textarea에 에디터에서 대입
            obj.getById["f_content"].exec("UPDATE_CONTENTS_FIELD", []);
            //폼 submit
            $("#frm").submit();
        });
    });
	*/
</script>
</head>
<body>
	<form action="FreeBoardInsertsubmit" enctype="multipart/form-data" id="frm" method="post">
	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="card text-white bg-dark col-md-11 mb-3" style="right: 80px">
  				<div class="card-body">
    				<h3>글쓰기</h3>
  				</div>
			</div>
		</div>
		<div class="row" style="text-align: center;margin-top: 80px">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th width="300">작성자</th>
						<td width="300"><input name="f_writer" id="f_writer" type="text" size="45" value="${sessionid}" readonly="readonly"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input id="f_title" name="f_title" type="text" size="45"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
								<textarea name="f_content" id="f_content" rows="10"
									cols="100" style="width: 590px; height: 500px;"></textarea>
								<input type="button" class="btn btn-warning" id="savebutton" value="작성">
								<input type="button" class="btn btn-danger" id="returnbutton" value="목록">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</form>
</body>
</html>