<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>​
<html>
	<head>
		<title>Home</title>
	</head>
	<body id="homebodycolor" class="homebodycolor">
	<form id="home" name="home" method="post" action="InGameForm">
	
	<div class="container" style="width:100%; height:auto; float:left;">
	<div class="contents" style="width:1130px; position:relative;"> 
		<ul style="width:1130px; float:left;  margin-top:42px;  margin-right:60px; 
		margin-bottom:50px; list-style:none;
		">
			<li style=" width:245px; height:351px; float:left; margin-right:20px; position:relative;
			background:url('resources/image/mainpage/main_con_board_view_bg01.png')no-repeat; ">
				<dl style="width:100%;  position:relative; height:100%;">
					<dt style=" width:100%; height:40px;  text-align:center;color:#c4a26e;
					font-size:25px; margin-top:16px;">
					<img src="resources/image/mainpage/board_icon_01.png" alt="공지" style="margin:0;padding:0;border:0;
					font-size:100%;">
					</dt>
					<c:forEach var="board" items="${boards}" >		
					<dd style="width:100%; height:30px; margin-top:10px;">
						<span style="width:100%; font-size:25px; margin-top:30px;">
						<a href="boardpagelistform" style="color:#c4a26e; text-decoration:none;
						">공지사항</a>
					</span>
					</dd>
					<dd style="width:210px; height:36px; text-align:center; color:#231f20; font-size:18px;
					margin-top:30px;  margin-left:27px;">
						<a href="boarddetail?b_seq=${board.b_seq}" style="color:#231f20; text-decoration:none;">${board.b_title}</a>
					</dd>
					<dd style="width:100%; text-align:center; font-size:14px; color:#a7a9ac; margin-top:0px;">
						<fmt:parseDate value="${board.b_date}" var="modifyDate" pattern="yyyy-MM-dd E a HH:mm:ss"/>
						<fmt:formatDate value="${modifyDate}" pattern="yyyy-MM-dd"/>
						
					</dd>
					<dd style="overflow:hidden; width:210px; height:60px; text-align:center; font-size:14px;
					color:#736a6c; margin-top:15px; margin-left:27px;">
						<a href="boarddetail?b_seq=${board.b_seq}" style="text-decoration:none; color:#736a6c;">
							${board.b_content}
						</a>
					</dd>
					</c:forEach>
				</dl>
			</li>	
			
			<li style=" width:245px; height:351px; float:left; margin-right:20px; position:relative;
			background:url('resources/image/mainpage/main_con_board_view_bg02.png')no-repeat; ">
				<dl style="width:100%;  position:relative; height:100%;">
					<dt style=" width:100%; height:40px;  text-align:center;color:#c4a26e;
					font-size:25px; margin-top:16px;">
					<img src="resources/image/mainpage/board_icon_02.png" alt="공지" style="margin:0;padding:0;border:0;
					font-size:100%;">
					</dt>
					<c:forEach var="free" items="${frees}" >
					<dd style="width:100%; height:30px; margin-top:10px;">
						<span style="width:100%; font-size:25px; margin-top:30px;">
						<a href="FreeBoardForm" style="color:#c4a26e; text-decoration:none;">자유게시판</a>
					</span>
					</dd>
					<dd style="width:210px; height:36px; text-align:center; color:#231f20; font-size:18px;
					margin-top:30px;  margin-left:27px;">
						<a href="freeboarddetailform?f_no=${free.f_no}" style="color:#231f20; text-decoration:none;">${free.f_title}</a>
					</dd>
					<dd style="width:100%; text-align:center; font-size:14px; color:#a7a9ac; margin-top:0px;">
						<fmt:parseDate  var="fixDate" value="${free.f_date}" pattern="yyyy-MM-dd HH:mm:ss.SSS"/>
						<fmt:formatDate value="${fixDate}" pattern="yyyy-MM-dd"/>
					
						
					</dd>
					<dd style="overflow:hidden; width:210px; height:60px; text-align:center; font-size:14px;
					color:#736a6c; margin-top:15px; margin-left:27px;">
						<a href="freeboarddetailform?f_no=${free.f_no}" style="text-decoration:none; color:#736a6c;">
							${free.f_content}
						</a>
					</dd>
					</c:forEach>
				</dl>
			</li>	
			
			<li style=" width:245px; height:351px; float:left; margin-right:20px; position:relative;
			background:url('resources/image/mainpage/main_con_board_view_bg03.png')no-repeat; ">
				<dl style="width:100%;  position:relative; height:100%;">
					<dt style=" width:100%; height:40px;  text-align:center;color:#c4a26e;
					font-size:25px; margin-top:16px;">
					<img src="resources/image/mainpage/board_icon_03.png" alt="공지" style="margin:0;padding:0;border:0;
					font-size:100%;">
					</dt>
					<c:forEach var="ranklista" items="${ranklist}" >
					<dd style="width:100%; height:30px; margin-top:10px;">
						<span style="width:100%; font-size:25px; margin-top:30px;">
						<a href="rankform?id=${sessionid}" style="color:#c4a26e; text-decoration:none;">순위</a>
					</span>
					</dd>
					<dd style="width:210px; height:36px; text-align:center; color:#231f20; font-size:18px;
					margin-top:30px;  margin-left:27px;">
						<a href="rankMove?id=${ranklista.id}" style="color:#231f20; text-decoration:none;">${ranklista.id}</a>
					</dd>
					<dd
					style="width:100%; text-align:center; font-size:14px; color:#a7a9ac; margin-top:0px;">
					<input type="text" id="date" name="date" style="border:none;padding:0; background-color:transparent;
					font-size:14px; color:#a7a9ac; text-align:center;">
					</dd>
					<dd style="overflow:hidden; width:210px; height:60px; text-align:center; font-size:14px;
					color:#736a6c; margin-top:15px; margin-left:27px;">
							1위가 되신걸 축하드립니다.
					</dd>
					</c:forEach>
				</dl>
			</li>	
			
			<li style=" width:245px; height:351px; float:left; margin-right:20px; position:relative;
			background:url('resources/image/mainpage/main_con_board_view_bg04.png')no-repeat; ">
				<dl style="width:100%;  position:relative; height:100%;">
					<dt style=" width:100%; height:40px;  text-align:center;color:#c4a26e;
					font-size:25px; margin-top:16px;">
					<img src="resources/image/mainpage/board_icon_04.png" alt="공지" style="margin:0;padding:0;border:0;
					font-size:100%;">
					</dt>
					<dd style="width:100%; height:30px; margin-top:10px;">
						<span style="width:100%; font-size:25px; margin-top:30px;">
						<a href="#" onclick=cashAlarm(); style="color:#c4a26e; text-decoration:none;">캐시샵</a>
					</span>
					</dd>
					<dd style="width:210px; height:36px; text-align:center; color:#231f20; font-size:18px;
					margin-top:30px;  margin-left:27px;">
						<a href="#" onclick=cashAlarm(); style="color:#231f20; text-decoration:none;">캐시샵 오픈예정</a>
					</dd>
					<dd style="width:100%; text-align:center; font-size:14px; color:#a7a9ac; margin-top:0px;">
						2018-09-06
					</dd>
					<dd style="overflow:hidden; width:210px; height:60px; text-align:center; font-size:14px;
					color:#736a6c; margin-top:15px; margin-left:27px;">
						<a href="#" onclick=cashAlarm(); style="text-decoration:none; color:#736a6c;">
							2018년 10월 11일(목) 점검후 오픈예정
						</a>
					</dd>
				</dl>
			</li>	
			
		</ul>
	
	</div>


</div>
</form>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript">
function cashAlarm(){
	alert('10월 11일 공개 예정');
};

window.onload=function dateModify(){
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

</script>
</body>
</html>
