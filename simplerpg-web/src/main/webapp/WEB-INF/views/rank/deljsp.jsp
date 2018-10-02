<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="pull-left" style="background-color:#ded9d1; width:249px; height:357px">
         <div class="pull-left" style="background:url('resources/image/rank/bg_equip2.jpg'); width:192px; height:289px; margin:36px 0 0 28px;">
         		 <c:choose>
            				<c:when test="${ruserdatas.itemA == 0}">
            						<a onmouseover="weaponOn()" onmouseout="weaponOut()">
				         		 	<img src="resources/image/rank/item2.jpg" alt="나무도끼" style= "width:54px; height:52px;
				         		 		position:absolute; top:1078px; left:310px; cursor:pointer;
				         		 		 " >
			         		 		 </a>
				         		 		
            				</c:when>
            				<c:when test="${ruserdatas.itemA == 1}">
				         		 	<a onmouseover="weaponOn1()" onmouseout="weaponOut1()">
				         		 		<img src="resources/image/rank/item6.jpg" alt="슬라임소드" style= "width:54px; height:52px;
				         		 		position:absolute; top:1078px; left:310px; cursor:pointer;
				         		 		 " >
				         		 	</a>
            				</c:when>
            				<c:when test="${ruserdatas.itemA == 2}">
            					<a onmouseover="weaponOn2()" onmouseout="weaponOut2()">
            					<img src="resources/image/rank/item3.jpg" alt="철소드" style= "width:54px; height:52px;
				         		 		position:absolute; top:1078px; left:310px; cursor:pointer;
				         		 		 " >
		         		 		 </a>
            				</c:when>
            				<c:when test="${ruserdatas.itemA == 3}">
            					<a onmouseover="weaponOn3()" onmouseout="weaponOut3()">
            					<img src="resources/image/rank/item9.jpg" alt="강철소드" style= "width:54px; height:52px;
				         		 		position:absolute; top:1078px; left:310px; cursor:pointer;
				         		 		 " >
		         		 		 </a>
            				</c:when>
    				</c:choose>
    				<c:choose>
    					<c:when test="${ruserdatas.itemD == 0}">
    							<a onmouseover="defenseOn()" onmouseout="defenseOut()">
				         		 	<img src="resources/image/rank/item1.jpg" alt="나무방패" style= "width:54px; height:52px;
				         		 		position:absolute; top:1078px; left:425px; cursor:pointer;
				         		 		 " >
		         		 		 </a>
				         		 		
            				</c:when>
            				<c:when test="${ruserdatas.itemD == 1}">
				         		 	<a onmouseover="defenseOn1()" onmouseout="defenseOut1()">
				         		 		<img src="resources/image/rank/item7.jpg" alt="슬라임쉴드" style= "width:54px; height:52px;
				         		 		position:absolute; top:1078px; left:425px;cursor:pointer;
				         		 		 " >
		         		 		 </a>
            				</c:when>
            				<c:when test="${ruserdatas.itemD == 2}">
            					<a onmouseover="defenseOn2()" onmouseout="defenseOut2()">
            					<img src="resources/image/rank/item5.jpg" alt="철쉴드" style= "width:54px; height:52px;
				         		 		position:absolute; top:1078px; left:425px;cursor:pointer;
				         		 		 " >
		         		 		 </a>
            				</c:when>
            				<c:when test="${ruserdatas.itemD == 3}">
            					<a onmouseover="defenseOn3()" onmouseout="defenseOut3()">
            					<img src="resources/image/rank/item4.jpg" alt="강철쉴드" style= "width:54px; height:52px;
				         		 		position:absolute; top:1078px; left:425px;cursor:pointer;
				         		 		 " >
		         		 		 </a>
            				</c:when>
    				</c:choose>
         		 
         </div>	
         </div>
</body>
</html>