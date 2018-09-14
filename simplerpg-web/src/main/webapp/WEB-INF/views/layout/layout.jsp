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