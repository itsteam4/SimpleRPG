<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form id="game_guide_form" name="game_guide_form" action="gameguideform"
      method="post">
 <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Simple RPG
        <small style="color: 	#DAA520"> INTRODUCTION</small>
      </h1>

      <ol class="breadcrumb" style="margin-top: 50px">
        <li class="breadcrumb-item">
          <a href="IndexForm">Home</a>
       / 게임소개 / 게임배경 소개                             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      </ol>

    <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="card">
          <div class="card-header" role="tab" id="headingOne" >
            <h5 class="mb-0">
              <a style="color: 	#DAA520"data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" >
              게임을 만들게된 계기
              </a>
            </h5>
          </div>

          <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
            <div class="card-body">
             <img class="img-fluid rounded mb-3 mb-md-0" src="resources/image/guide/gameguideimage2.jpg" alt=""><br>
             이 게임을 만들게된 계기는 요즘 3D 게임이 많이 나오는 지금,<br>
             어린시절 자주 하던 너구리, 고인돌 같은 2D게임을 추억하며, 다시 2D게임들이 가끔 출시되기도 합니다.<br>
             그동안 배운 지식을 활용하여, 저도 저만의 귀여운 2D게임을 출시하고 싶어서, 이렇게 만들게 됐습니다.
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingTwo">
            <h5 class="mb-0">
              <a style="color: 	#DAA520"class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
              게임 주인공의 스토리 </a>
            </h5>
          </div>
          <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="card-body">
            <img class="img-fluid rounded mb-3 mb-md-0" src="resources/image/guide/hero01.jpg" alt="">
           &nbsp <img class="img-fluid rounded mb-3 mb-md-0" src="resources/image/guide/hero02.jpg" alt="">
            <br>
               이번 2D게임의 스토리는 <br>
              주인공은 어린시절부터 잠자기전에 꼬박 듣던, 숲의요정 이야기를 들으며 성장하였다.<br>
              그런던 어느날 꿈속에 숲의 요정이라는 무언가가 자신을 구해달라고 요청을했다.<br>
              놀라며 잠에서 깬 주인공은 꿈이 너무 생생하여, 어린시절 호기심을 자극했던<br> 숲의 요정을 구하기 위하여 
              무작정 모험을 떠난다.<br>
              집 뒤에 있는 울창하고 괴상하고 어마무시한 여러가지 소문을 가지고있는 숲속에 사는, <br>
              숲의 요정을 구하기 위하여 숲속에 살고있는 여러 몬스터들을 만나, 처리하고<br>
              숲의 요정에게 한걸음씩 가고있다.
            </div>
          </div>
        </div>
      
      </div>
 <!-- Pagination -->
       <hr>
      <ul class="pagination justify-content-center">
        <li class="page-item">
        </li>
        <li class="page-item">
          <a class="page-link" href="#">맨위로 가기</a>
        </li>
      </ul>
    <!-- /.container -->
</form>

</body>
</html>