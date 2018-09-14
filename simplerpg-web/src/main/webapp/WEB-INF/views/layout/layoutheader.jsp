<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
  
</head>
<body>
	<form>
	  <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="IndexForm">Simple RPG</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive" style="position: absolute;right:20px">
          <ul class="navbar-nav ml-auto" >
            <li class="nav-item">
              <a class="nav-link" href="about.html">�ҽ�</a>
            </li>
            
           <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                		���ӼҰ�
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="gameguideform">���ӹ�� �Ұ�</a>
                <a class="dropdown-item" href="itemguideform">������ �Ұ�</a>
                <a class="dropdown-item" href="monsterguideform">���� �Ұ�</a>
              </div>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                		��ŷ
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="dbinserform">DB�� �Է�</a>
                <a class="dropdown-item" href="rankform">���� ����</a>
                <a class="dropdown-item" href="rankinfoform">��ŷ ����</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                	Ŀ�´�Ƽ
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="ScreenFreeBoardForm">��ũ����</a>
                <a class="dropdown-item" href="MediaFreeBoardForm">������</a>
                <a class="dropdown-item" href="FreeBoardForm?id=${member.id}">�����Խ���</a>
                <a class="dropdown-item" href="TipKnowBoardForm">��/���Ͽ�</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                		������
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="blog-home-1.html">���ֹ�������</a>
                <a class="dropdown-item" href="blog-home-2.html">1:1����</a>
                <a class="dropdown-item" href="blog-post.html">���� ����</a>
              </div>
            </li>
            	<c:choose>
            		<c:when test="${sessionid == null}">
            		<li class="nav-item dropdown">
            				<button type="button" id="loginbutton" class="btn btn-primary">�α���</button>
					</li>
					</c:when>
            		<c:otherwise>
            			<li class="nav-item dropdown">
            				<a class="nav-link-dropdown-toggle" href="#" data-toggle="dropdown"><button type="button" class="btn btn-warning"><i class="fa fa-address-card" aria-hidden="true" style="size:30px"></i>${sessionid} �� �ݰ����ϴ�!</button></a>
            				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
										<a class="dropdown-item" href="logout">�α� �ƿ�</a>
										<a class="dropdown-item" href="loginfo?id=${sessionid}">���� ���� ����</a>
							</div>
            			</li>
            		</c:otherwise>
            	</c:choose>
          </ul>	
          </div>
        </div>
    </nav>
    </form>
</body>
</html>