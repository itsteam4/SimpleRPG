<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Insert title here</title>
 <!-- Bootstrap core CSS -->
    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="resources/css/modern-business.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
	    <!-- Navigation -->
    <page:applyDecorator name="layoutheader" />
    <div class="contatiner">
    <div id="wrapper">
       	<div class="container-fluid" align="center">
				<div id="page-wrapper"
					style="background-color: #fff; display: inline-block; text-align: center;">
					<decorator:body />
				</div>
			</div>    
        <!-- /#page-wrapper -->
    </div>
    <!-- FOOTER SECTION START -->
    <div class="footer navbar-fixed-bottom" style=" width:100%; min-height:100px;
    	background-color: #fafafa; float:left; font-size:100%;">
    	<div class="footer_wrap" style="width:1130px; margin:0 auto; overflow:hidden;">
	    		<ul class="pull-left" style="list-style:none; margin-top:20px; overflow:hidden;">
	            <li class="" style="float:left;color:#666666; border-right:1px dotted #5e5e5e; font-size:12px; padding:0 11px;"
	            ><a href="#" target="_blank" title="새창으로 이동"
	            style="color:#666666; text-decoration:none;"
	            >회사소개</a></li>
	            <li class="" style="float:left;color:#666666; border-right:1px dotted #5e5e5e; font-size:12px; padding:0 11px;"
	            ><a href="#" target="_blank" title="새창으로 이동"
	            style="color:#666666; text-decoration:none;"
	            >채용</a></li>
	            <li class="" style="float:left;color:#666666; border-right:1px dotted #5e5e5e; font-size:12px; padding:0 11px;"
	            ><a href="#" target="_blank" title="새창으로 이동"
	            style="color:#666666; text-decoration:none;"
	            >채용안내</a></li>
	            <li class="" style="float:left;color:#666666; border-right:1px dotted #5e5e5e; font-size:12px; padding:0 11px;"
	            ><a href="#" target="_blank" title="새창으로 이동"
	            style="color:#666666; text-decoration:none;"
	            >이용약관</a></li>
	            <li class="" style="float:left;color:#666666; border-right:1px dotted #5e5e5e; font-size:12px; padding:0 11px;"
	            ><a href="#" target="_blank" title="새창으로 이동"
	            style="color:#666666; text-decoration:none;"
	            >게임이용등급안내</a></li>
	            <li class="" style="float:left;color:#666666; border-right:1px dotted #5e5e5e; font-size:12px; padding:0 11px;"
	            ><a href="#" target="_blank" title="새창으로 이동"
	            style="color:#666666; text-decoration:none;"
	            >개인정보처리방침</a></li>
	            <li class="" style="float:left;color:#666666; border-right:1px dotted #5e5e5e; font-size:12px; padding:0 11px;"
	            ><a href="#" target="_blank" title="새창으로 이동"
	            style="color:#666666; text-decoration:none;"
	            >청소년보호정책</a></li>
	            <li class="" style="float:left;color:#666666; border-right:1px dotted #5e5e5e; font-size:12px; padding:0 11px;"
	            ><a href="#" target="_blank" title="새창으로 이동"
	            style="color:#666666;  text-decoration:none;"
	            >운영정책</a></li>
	            <li class="" style="float:left;color:#666666; border-right:1px dotted #5e5e5e; font-size:12px; padding:0 11px;"
	            ><a href="#" target="_blank" title="새창으로 이동"
	            style="color:#666666; text-decoration:none;"
	            >용문 PC방</a></li>
	        </ul>
			<div class="footer" style="float:left; width:771px; margin-top:5px; text-align:left;
			margin-bottom:50px; font-size:12px; color:#666666; padding-left:50px;">
				주)솔루션테크 대표이사 배수환.  개인정보 관리 책임자 백승구 email: help@itschool.or.kr <br>
			 	주소 (35300) 대전광역시 서구 계룡로 636(용문동,도산빌딩7층) 대표번호 042)525-2666 Fax 042)522-9666<br>
			            ⓒ Copyright  2018 Itschool All rights reserved.
			</div>
		</div>
	</div>
	 <!-- FOOTER SECTION END-->
</div>
 <!-- Bootstrap core JavaScript -->
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="resources/login/login.js"></script>
    <script src="resources/member/post.js"></script>
	<script src="resources/member/member.js"></script>
<!-- Daum API -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- Community -->
	<script src="resources/community/freeboards.js"></script>    
</body>
</html>