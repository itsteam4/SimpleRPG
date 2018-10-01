<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>



	<div class="container" style="width:1130px; height:auto; float:left; margin-bottom:40px" >
			<div class="pull-left" style="width:100%;  padding-top:74px; height:56px;">
				<div class="pull-left" style=" width:100%; border-bottom:1px solid #2e2828;">
					<h4 class="pull-left"style="font-size:38px; color: #2e2828; ">
				순위 리스트</h4>
				</div>
			</div>
			
			<c:choose>
         		<c:when test="${sessionid == null}">
			<div class="" style="width:100%; margin-bottom:50px; ">
				<div class="pull-left" style=" background:url('resources/image/rank/best_con_bg.jpg');margin-top:110px; height:225px; width:100%;">
					<div style=" width:100%; text-align:center">
						<div style=" width:265px; height:40px; margin-top:20px; display:inline-block;">
						<input name="date" id="date" style="color:#c13a3a; font-size:33px; margin-left:20px;
						border:none;padding:0; background-color:transparent;">
						</div>
					</div>
					<div style="margin-top:35px">
					<p style="font-size:20px; color:#345e76;">나의 순위를 확인하려면 로그인이 필요 합니다.</p>
					<div style="width:100%; text-align:center">
						
						<div style="width:230px; height:42px; background:url('resources/image/rank/bg_rank_view.jpg'); display:inline-block;">
							<a class="" href="#" onclick=rankaAlarm(); style="text-align:right; color:#fff;
							 width:230px; height:42px; font-size:20px; display:inline-block;
							 text-decoration:none; padding-right:18px;
						 	">
						 	순위보기</a>
						</div>
					</div>
					</div>
				</div>
			</div>
			</c:when>
			<c:otherwise>
				<div class="" style="width:100%; margin-bottom:50px; ">
				<div class="pull-left" style=" background:url('resources/image/rank/best_con_bg.jpg');margin-top:110px; height:225px; width:100%;">
					<div style=" width:100%; text-align:center">
						<div style=" width:265px; height:40px; margin-top:20px; display:inline-block;">
						<input name="date" id="date" style="color:#c13a3a; font-size:33px; margin-left:20px;
						border:none;padding:0; background-color:transparent;">
						</div>
						<div class="Test">
						 
						</div>
					</div>
					<div style="margin-top:35px">
					<p style="font-size:30px; color:#345e76;">${myrank}위</p>
					<div style="width:100%; text-align:center">
						
						<div style="width:230px; height:42px; background:url('resources/image/rank/bg_rank_view.jpg'); display:inline-block;">
							<a class=""  style="text-align:right; color:#fff;
							 width:230px; height:42px; font-size:20px; display:inline-block;
							 text-decoration:none; padding-right:18px;
						 	">
						 	현재순위</a>
						</div>
					</div>
					</div>
				</div>
			</div>
			</c:otherwise>
			</c:choose>
			
			
			
			<div style="width:100%; margin-top:50px;  text-align:center">
				<div style="display:inline-block;margin-top:50px; ">
					<h3 class="pull-left" style="font-size:20px; color:#2e2828;">순위검색</h3>
						<input class="pull-left" type="text" style="width:250px; margin-top:3px; margin-left:40px;
						border:1px solid #d5d5d5; font-size:14px;">
						<a class="pull-left" href="#" style="background:url('resources/image/rank/btn_search.gif');
						width:40px; heigth:28px; overflow:hidden; display:inline-block; 
						text-decoration:none; text-indent: -9999px;
						margin-top:3px;">검색하기</a>
				</div>
			</div>
			
		
			<div style="width:100%; text-align:center; margin-top:40px; ">
				<div class="" style="width:500px; height:25px; display:inline-block;">
					<ul class="" style="list-style:none;">
						<li class="pull-left" style="">
							<a class="pull-left"  href="#"
							style="background:url('resources/image/rank/sprt_ico_job_n2.png')no-repeat;
							width:70px; height:25px;
							background-position:0 4px; text-decoration:none;
							heigth:21px; display:inline-block;">
							<span style="margin-bottom:10px; margin-left:19px;  color:#a8a8a8;
								display:inline-block;">스코어</span>
							</a>
						</li>
						<img class="pull-left"  
						src="resources/image/rank/bar_rank.gif" alt="line" width="1px" height="25px"
						style="margin:1px 30px 0 30px; "
						>
						<li class="pull-left" style="">
							<a class="pull-left"  href="#"
							style="background:url('resources/image/rank/sprt_ico_job_n2.png')no-repeat;
							width:70px; height:25px;
							background-position:0 4px; text-decoration:none;
							heigth:21px; display:inline-block;">
							<span style="margin-bottom:10px; margin-left:27px;  color:#a8a8a8;
								display:inline-block;">킬수</span>
							</a>
						</li>
						<img class="pull-left"  
						src="resources/image/rank/bar_rank.gif" alt="line" width="1px" height="25px"
						style="margin:1px 30px 0 30px;">
						<li class="pull-left" style="">
							<a class="pull-left"  href="#"
							style="background:url('resources/image/rank/sprt_ico_job_n2.png')no-repeat;
							width:70px; height:25px;
							background-position:0 4px; text-decoration:none;
							heigth:21px; display:inline-block;">
							<span style="margin-bottom:10px; margin-left:27px;  color:#a8a8a8;
								display:inline-block;">레벨</span>
							</a>
						</li>
						
					</ul>
				</div>
			</div>
			
			<div style="margin-top:25px; border-top:1px solid #2e2828;">
				<table class="table table-hover">
						<thead>
							<tr>
								<th style="color:#747474; font-size:15px;">순위</th>
						        <th style="color:#747474; font-size:15px;">레벨</th>
						        <th style="color:#747474; font-size:15px;">캐릭터명</th>
						        <th style="color:#747474; font-size:15px;">점수</th>
						        <th style="color:#747474; font-size:15px;">킬수</th>
						        <th style="color:#747474; font-size:15px;">사망</th>
							</tr>
						</thead>
						<tbody>
						
							
							<c:forEach var="ranklist" items="${ranklist}">
							
							
            				<tr>
								<td style="color:#9b8769">${ranklist.rank}</td>
								<td>${ranklist.userlv}</td>
								<td> 
								<a name="underline" id="underline"
								style="text-decoration:none;color:#242323;"
								href="rankMove?id=${ranklist.id}">${ranklist.id}
								</a>
								</td>
								<td>${ranklist.userscore}</td>
								<td style="color:#4290c7;;">${ranklist.userkill}</td>
								<td style="color:#c03636;">${ranklist.userdead}</td>
								</tr>
								
							
							
							</c:forEach>
							
						</tbody>
					</table>
				</div>
			
			
	</div>
</form>	

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript"> 
function rankaAlarm(){
	alert('나의 순위를 확인하려면 로그인이 필요 합니다.');
};

window.onload=function dateSearch(){
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();

	if(dd<10) {
	    dd='0'+dd
	} 
	if(mm<10) {
	    mm='0'+mm
	} 
	today = yyyy+'-'+mm+'-'+dd;
	document.getElementById("date").value = today;
	document.getElementById("date0").value = today;
	
	
};	
	
$(document).ready(function(){
	$.ajax({
		type:'POST',
		datatype:'json',
		url : 'rankInsert',
		success : function(data){
		},
		error : function(xhr, status, error){
		}
	});
	
});


</script>
</body>
</html>