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
  <form id="board_reply" name="board_reply" action="boardreplyinsert" method="post" enctype="multipart/form-data">
       <h1 class="mt-4 mb-3">Simple RPG
        <small style="color:    #FF0000">NOTICE</small>
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
               <h1 style="color:     #FF0000">공지사항</h1>
            </div>
            <div class="col-md-4"></div>
         </div>
        <div class="row" style="margin-top: 30px">
                     <div class="col-md-3"></div>
                     <div class="input-group mb-3 col-md-6 ">
                           <div class="input-group-prepend">
                                <span class="input-group-text" style="width: 150px"><i
                                     class="fas fa-user-plus" style="font-size: 17px"> E-MAIL</i></span>
                           </div>
                           <input type="text" class="form-control" id="b_id" name="b_id" value="${sessionid}" readonly>
                     </div>
                     <div class="col-md-3"></div>
                </div>
                
                <div class="row">
                     <div class="col-md-3"></div>
                     <div class="input-group mb-3 col-md-6 ">
                           <div class="input-group-prepend">
                                <span class="input-group-text" style="width: 150px"><i
                                     class="fas fa-user-lock" style="font-size: 17px"> 이름</i></span>
                           </div>
                           <input type="text" id="b_name" name="b_name" class="form-control" value="${sessionname}" readonly>
                     </div>
                     <div class="col-md-3"></div>
                </div>
                <div class="row">
                     <div class="col-md-3"></div>
                     <div class="input-group mb-3 col-md-6 ">
                           <div class="input-group-prepend">
                                <span class="input-group-text" style="width: 150px"><i
                                     class="fas fa-user-lock" style="font-size: 17px"> 제목</i></span>
                           </div>
                           <input type="text" id="b_title" name="b_title" class="form-control" value="${board.b_title}" required="true">
                     </div>
                     <div class="col-md-3"></div>
                </div>
                <div class="row">
                     <div class="col-md-3"></div>
                     <div class="input-group mb-3 col-md-6 ">
                           <div class="input-group-prepend">
                                <span class="input-group-text" style="width: 150px"><i
                                     class="fas fa-user-lock" style="font-size: 17px"> 첨부파일</i></span>
                           </div>
                           <input type="file" id="file" name="file" class="form-control">
                     </div>
                     <div class="col-md-3"></div>
                </div>
                <div class="row">
                     <div class="col-md-3"></div>
                     <div class="col-md-6">
                           <textarea id="b_content" name="b_content" class="form-control" rows="10" style="resize: none" required="true"></textarea>
                     </div>
                     <div class="col-md-3"></div>
                </div>
                <div class="row" style="margin-top: 30px">
                     <div class="col-md-3"></div>
                     <div class="col-md-3">
                           <button type="submit" id="confirm" class="btn btn-primary btn-block">확인</button>
                     </div>
                     <div class="col-md-3">
                           <button type="reset" id="cancel" class="btn btn-primary btn-block">취소</button>
                     </div>
                     <div class="col-md-3"></div>
                </div>
           </div>
         <hr>
         </div>
   </form>
</body>
</html>