<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<%-- <content tag="local_script"> --%>
<!--    <script type="text/javascript"> -->
<!--          alert(100);  -->
<!-- </script>  -->
<%-- </content> --%>
</head>
<body>
   <form id="board_list" name="board_list" action="boardpagelist"
      method="get">
       <h1 class="mt-4 mb-3">Simple RPG
        <small style="color: 	#FF0000">NOTICE</small>
      </h1>

      <ol class="breadcrumb" style="margin-top: 50px">
        <li class="breadcrumb-item">
          <a href="IndexForm">Home</a>
       / 고객센터 / 공지사항                             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      </ol>
      <div class="container">
         <div class="row" style="margin-top: 30px">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="text-align: center">
               <h1 style="color: 	#FF0000">공지사항</h1>
            </div>
            <div class="col-md-4"></div>
         </div>

         <table class="table table-bordered" style="margin-top: 30px">
            <thead class="thead-dark" style="text-align: center">
               <tr>
                  <th>번호</th> 
                  <th>구분</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성일</th>
                  <th>조회수</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="boards" items="${boards}" varStatus="status">
                  <tr>
                     <td ><c:if test="${boards.b_step == 0}">
                        ${boards.b_ref}
                     </c:if></td>
                     <td>${boards.b_id}</td>
                     <td>${boards.b_name}</td>
                     <td><a href="boarddetail?b_seq=${boards.b_seq}"
                        style="color: #292929"> <c:if test="${boards.b_step ge 1}">
                              <i class="fab fa-replyd"></i>
                           </c:if> ${boards.b_title}
                     </a></td>
                     <td style="text-align: center"><c:choose>
                           <c:when
                              test="${boards.b_attach == null || boards.b_attach == ''}">
                           </c:when>
                           <c:otherwise>
                              <a href="boarddownload?b_attach=${boards.b_attach}"
                                 style="color: #292929"><i id="attach_file"
                                 class="fas fa-clipboard"></i></a>
                           </c:otherwise>
                        </c:choose></td>
                     <td>${boards.b_date}</td>
                     <td style="text-align:center">${boards.b_hit}</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
         <div class="row" style="margin-top: 30px">
            <div class="col-md-3"></div>
            <div class="col-md-6" style="text-align: center">
               <c:forEach var="page" items="${pages}">
                  <a href="boardpageselected?page=${page}" style="color: #292929">[${page}]</a>&nbsp
               </c:forEach>
            </div>
            <div class="col-md-3"></div>
         </div>
         <div class="row" style="margin-top: 30px">
            <div class="col-md-12" style="text-align:right">
               <input type="text" id="search" name="find">
               <button type="submit" class="btn btn-primary">
                   검색
               </button>
               <c:choose>
                  <c:when test="${sessionid == null}">
                  </c:when>
                  <c:otherwise>
                     <a href="boardinsertform"><button type="button" id="write"
                           class="btn btn-success">글쓰기</button></a>
                  </c:otherwise>
               </c:choose>
            </div>
         </div>
         <hr>
   </form> 
</body>
</html>