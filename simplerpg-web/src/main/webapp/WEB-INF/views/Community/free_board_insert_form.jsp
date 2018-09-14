<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<meta name="decorator" content="freeboardinsertform" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
 <!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="resources/smarteditor/js/HuskyEZCreator.js"></script>

<script>
$(function(){
    //������������
    var editor_object = [];
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "smarteditor",
        sSkinURI: "/smarteditor/SmartEditor2Skin.html",
        htParams : {
            // ���� ��� ���� (true:���/ false:������� ����)
            bUseToolbar : true,            
            // �Է�â ũ�� ������ ��� ���� (true:���/ false:������� ����)
            bUseVerticalResizer : true,    
            // ��� ��(Editor | HTML | TEXT) ��� ���� (true:���/ false:������� ����)
            bUseModeChanger : true,
        }
    });
     
    //���۹�ư Ŭ���̺�Ʈ
    $("#savebutton").click(function(){
        //id�� smarteditor�� textarea�� �����Ϳ��� ����
        editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // �̺κп� ������ validation ����
         
        //�� submit
        $("#frm").submit();
    })
})
</script>
</head>
<body>
	<div class="container">
		<div class="row" style="text-align: center;margin-top: 80px">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th width="300">�ۼ���</th>
						<td width="300"><input type="text" size="45"></td>
					</tr>
					<tr>
						<th>����</th>
						<td><input type="text" size="45"></td>
					</tr>
					<tr>
						<th>����</th>
						<td>
							<form action="/send.jsp" method="post" id="frm">
								<textarea name="smarteditor" id="smarteditor" rows="10"
									cols="100" style="width: 766px; height: 412px;"></textarea>
								<input type="button" id="savebutton" value="��������" />
							</form>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
</body>
</html>