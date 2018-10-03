<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="decorator" content="freeboard_comment_forms">
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css.map">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
<div class="container">
    <form id="commentForm" name="commentForm" method="post">
    <br><br>
        <div>
            <div>
                <span><strong>댓글</strong></span> <span id="cCnt"></span>
            </div>
            <div>
                <table class="table">                    
                    <tr>
                    	<td>
                    		<span>작성자:</span>
                    		<input type="text" id="fc_writer" name="fc_writer" value="${sessionid}" readonly="readonly">
                    	</td>
                    </tr>
                    <tr>
                        <td>
                        	 <input type="text" id="fc_bno" name="fc_bno" value="${detail.fc_bno}"/>
                            <textarea style="width: 1100px" rows="3" cols="30" id="fc_content" name="fc_content" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                                <a href="#" name="commentInsertBtn" class="btn pull-right btn-success" onclick="selectcall();">등록</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="fc_cno" name="fc_cno" value="${detail.fc_cno}" />        
    </form>
</div>
<div class="container">
    <form id="commentListForm" name="commentListForm" method="post">
        	<div class="commentList">
        </div>
    </form>
</div>
	<script>
	var bno = '${detail.fc_bno}';
	
	$('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
	    var insertData = $('[name=commentForm]').serialize(); //commentInsertForm의 내용을 가져옴
	    selectcall(insertData); //Insert 함수호출(아래)
	});
		

	
		function commentList(){
			$.ajax({
				type:'GET',
				url: 'commentlist',
				data: {'bno':bno},
				success: function(data){
					 var a =''; 
			            $.each(data, function(key, value){ 
			                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
			                a += '<div class="commentInfo'+value.cno+'">'+'댓글번호 : '+value.cno;
			                a += '<a onclick="commentUpdate('+value.cno+',\''+value.content+'\');"> 수정 </a>';
			                a += '<a onclick="commentDelete('+value.cno+');"> 삭제 </a> </div>';
			                a += '<div class="commentContent'+value.cno+'"> <p> 내용 : '+value.content +'</p>';
			                a += '</div></div>';
				});
			    
			    $(".commentList").html(a);
				}
			});
		} 
	
		function selectcall(insertData){
			$.ajax({
				type:'POST',
				datatype:'json',
				url : 'selectcall',
				data :insertData,
				success : function(data){
					if(data == 1){
						commentList();
						$('[name=fc_content]').val('');
					}
				},
				error : function(xhr, status, error){
					alert('ajax error'+xhr );
				}
			});	
		}
		
</script>
</body>
</html>