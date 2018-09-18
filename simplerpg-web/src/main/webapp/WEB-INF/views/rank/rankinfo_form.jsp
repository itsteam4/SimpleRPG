<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body >
<!-- background:url('resources/image/rank/bg_hope.jpg'); -->
<div class="container" style=" margin-bottom:40px">

	<div class="row" id="second" style="background:url('resources/image/rank/bg_hope_use_area.png'); background-size:100%; margin-top:50px;">
		<div class="col-md-2" style="padding-top:20px;padding-right:0px;padding-bottom:20px; padding-left:70px;">
			<div>
				<img src="resources/image/rank/DrawingImgbyID.aspx.png" alt="character" width="100px" height="140px">
			</div>
			
		</div>
		
		<div class="col-md-2" style="padding-top:35px; padding-right:30px; padding-bottom:0px; padding-left:0px;">
				<dl>
		            <dt class="ico_hope_name">
		            	<img src="resources/image/rank/ico_hope_name.png" alt="characname" width="22px" height="22px">
		            	캐릭터명
	            	</dt>
		            <dd>신이내린한분</dd>
		            
		            <img src="resources/image/rank/bg_use_info_bar.png" alt="bar" width="140px">
		            
		            <dt class="ico_server">
		            	<img src="resources/image/rank/ico_server.png" alt="server" width="22px" height="22px">
		            	활동 서버</dt>
		            <dd>용문동</dd>
		        </dl>
		</div>
		
			<div class="col-md-6">
			<form>
			<c:choose>
            		<c:when test="${sessionid == null}">
            			<div style="padding-top:20px; padding-right:350px; padding-bottom:0px; padding-left:0px" >
							<img src="resources/image/rank/ico_hope_greeting.png" alt="server" width="22px" height="22px">
							<label>한줄 인사말</label>
						</div>
					</c:when>
            		<c:when test="${(rankinfos.greeting == null) &&(rankinfos.id ==null) && (sessionid != null)}">
            			<div style="padding-top:20px; padding-right:260px; padding-bottom:0px; padding-left:0px" >
							<img src="resources/image/rank/ico_hope_greeting.png" alt="server" width="22px" height="22px">
							<label>첫등록시</label>
							<a href ="insertGreeting">
								<input class="btn_mdf" value="" 
								style="background:url('resources/image/rank/btn_modify.gif') no-repeat 0 0;
								width:44px; height:18px; border:none; padding:0;vertical-align: middle; cursor:pointer; ">
							</a>
						</div>
            		</c:when>
            		<c:when test="${(rankinfos.greeting != null)||(rankinfos.greeting == null) &&(rankinfos.id !=null) && (sessionid != null)}">
            			<div style="padding-top:20px; padding-right:260px; padding-bottom:0px; padding-left:0px" >
							<img src="resources/image/rank/ico_hope_greeting.png" alt="server" width="22px" height="22px">
							
							<label>두번째 등록하는경우</label>
							<button name="updatebtn" class="updatebtn" type="submit"
							style="background:url('resources/image/rank/btn_modify.gif') no-repeat 0 0; 
							width:44px; height:18px; border:none; padding:0;vertical-align: middle; cursor:pointer; ">
							
							</button>
							
						</div>
            		</c:when>
            	</c:choose>
			<div style="padding-top:5px; padding-right:0px; padding-bottom:0px; padding-left:40px">
				<input type="text" id="id" name="id" value="${sessionid}" style="display:none;">
				<textarea class="form-control" rows="3" id="greeting" name="greeting"
				>${rankinfos.greeting}</textarea>
			</div>
			</form>
		</div>
		
		
		
	</div>
	<!--경계-------------------------------------------------------- ------------ -->
	<!--경계-------------------------------------------------------- ----------- -->
	<!--경계-------------------------------------------------------- -------------- -->
	<!--경계-------------------------------------------------------- ---------------- -->
	<div class="" id="" style =" margin-top:50px; margin-bottom:15px; margin-left:25px; ">
			<div style="padding-right:944px; color:#685e60; font-size:18px;font-weight:normal;">
				<img src="resources/image/rank/ico_hope_stit.png" alt="characterinfo" width="22px" height="22px">
				캐릭터
			</div>
	</div>
	
	
	<div class="row" id="third" style =" margin-top:0px; " >
		<div class="col-md-2">
				<div class="pull-left">
				<ul class="" style="width:347px; height:97px;line-height: 97px;margin:2px 0 0 2px; list-style:none; ">
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">레벨</strong>
                        <img src="resources/image/rank/ico_hope_level.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">736</span>
                    </li>
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">직업</strong>
                        <img src="resources/image/rank/ico_hope_job.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">전사</span>
                    </li>
                </ul>
			</div>
		</div>
		
		<div class="col-md-2" style="margin-left:149px">
				<div class="pull-left">
				<ul class="" style="width:347px; height:97px;line-height: 97px;margin:2px 0 0 2px; list-style:none; ">
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">랭킹</strong>
                        <img src="resources/image/rank/ico_hope_ranking.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">1</span>
                    </li>
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">국가</strong>
                        <img src="resources/image/rank/ico_hope_country.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">고구려</span>
                    </li>
                </ul>
			</div>
		</div>
		
		<div class="col-md-2" style="margin-left:149px">
				<div class="pull-left">
				<ul class="" style="width:347px; height:97px;line-height: 97px;margin:2px 0 0 2px; list-style:none; ">
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">승급차수</strong>
                        <img src="resources/image/rank/ico_hope_promotion.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">7</span>
                    </li>
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">부부</strong>
                        <img src="resources/image/rank/ico_hope_couple.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">없음</span>
                    </li>
                </ul>
			</div>
		</div>
	</div>
	<!--경계-------------------------------------------------------- ------------ -->
	<!--경계-------------------------------------------------------- ----------- -->
	<!--경계-------------------------------------------------------- -------------- -->
	<!--경계-------------------------------------------------------- ---------------- -->
	<div class="row" id="third" style =" margin-top:50px; margin-bottom:15px; margin-left:45px;">
			<div style="padding-right:900px; color:#685e60; font-size:18px;font-weight:normal;">
				<img src="resources/image/rank/ico_hope_stit.png" alt="characterinfo" width="22px" height="22px">
				캐릭터 아이템
			</div>
	</div>
	
	
	
	
	
	<div class="row" style="margin-left:35px;">
	
	<div class="pull-left" style="background-color:#ded9d1; width:249px; height:357px">
         <div class="pull-left" style="background:url('resources/image/rank/bg_equip2.jpg'); width:192px; height:289px; margin:36px 0 0 28px;">
         	<ul class="" style="width:192px; height:289px; list-style:none; padding:15px 5px 0 15px;">
         		 <li class="pull-left" style="; width:54; height:52px;">
         		 	<a href="">
         		 		<img style="padding-top:5px"src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5766.png" alt="청의비녀" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="padding-left:10px; width:54; height:52px; ">
         		 	<a href="">
         		 		<img src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5623.png" alt="태광천신금잠" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px; padding-left:15px;" src="http://s.nx.com/S2/Game/baram/2016/itemImage/item6000/6365.png" alt="고대마령의암막 ">
         		 	</a>
         		 </li>
         		 
         		 
         		 <li class="pull-left" style="; width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px"src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5157.png" alt="용마제십검" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="padding-left:10px; width:54; height:52px; ">
         		 	<a href="">
         		 		<img src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5622.png" alt="태광천신신복" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px; padding-left:15px;" src="http://s.nx.com/S2/Game/baram/2016/itemImage/item6000/6343.png" alt="고대마령의단검">
         		 	</a>
         		 </li>
         		 
         		 <li class="pull-left" style="; width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px"src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5766.png" alt="청의비녀" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="padding-left:10px; width:54; height:52px; ">
         		 	<a href="">
         		 		<img src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5623.png" alt="태광천신금잠" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px; padding-left:15px;" src="http://s.nx.com/S2/Game/baram/2016/itemImage/item6000/6365.png" alt="고대마령의암막 ">
         		 	</a>
         		 </li>
         		 
         		 <li class="pull-left" style="; width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px"src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5766.png" alt="청의비녀" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="padding-left:10px; width:54; height:52px; ">
         		 	<a href="">
         		 		<img src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5623.png" alt="태광천신금잠" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px; padding-left:15px;" src="http://s.nx.com/S2/Game/baram/2016/itemImage/item6000/6365.png" alt="고대마령의암막 ">
         		 	</a>
         		 </li>
         		 
         		  <li class="pull-left" style="; width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px"src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5766.png" alt="청의비녀" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="padding-left:10px; width:54; height:52px; ">
         		 	<a href="">
         		 		<img src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5623.png" alt="태광천신금잠" >
         		 	</a>
         		 </li>
         	</ul> 
         </div>	
         </div>
         
         	<div class="pull-left" style ="background-color:#e8e4df; width:795px; height:357px">
		         <div style="padding-top:30px; padding-left:50px;">
		         	<img class="pull-left" src="resources/image/rank/ico_item01.png" alt="아이템모음" >
		         	<label class="pull-left" style="font-size:23px; color:rgb(72,65,66); font-weight:normal;
		         	padding-left:6px; " >일반 장착</label>
		         </div>
		         
		         <div class="pull-left" style="margin:14px 0 0 25px;">
	         		<ul class="pull-left" style=" list-style:none; width:770px; height:246px;
	         		overflow:hidden; padding:0 0 0 0; ">
	         		
	         			<li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px; color:rgb(104,94,96);  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 목/어깨장식</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 투구</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 얼굴장식</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 무기</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 갑옷</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 방패/보조무기</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 망토</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 신발</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 세트옷</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">오른손</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">왼손</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px; border-collapse: collapse;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">보조 1</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">보조2</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px; border-collapse: collapse;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 장신구</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
	         		</ul>
         		</div>
         	</div>
	</div>
	
	<!--경계-------------------------------------------------------- ------------ -->
	<!--경계-------------------------------------------------------- ----------- -->
	<!--경계-------------------------------------------------------- -------------- -->
	<!--경계-------------------------------------------------------- ---------------- -->
	
	<div class="row" id="five" style ="margin-top:50px; margin-left:45px;">
			<div style="padding-right:900px">
				<img src="resources/image/rank/ico_hope_stit.png" alt="characterinfo" width="22px" height="22px">
				<label style="font-size:18px; color:#685e60;">@@님의 방명록</label>
			</div>
	</div>
	
	<div class="row" style="width:100%; height:82px; margin-left:45px;
		background:url('resources/image/rank/coment_bg02.png') no-repeat 0 0;">
        <span class="pull-left" id="commentSpan" style="width:74px; height:82px; background:url('resources/image/rank/coment_count_bg.jpg')right center;
        text-align:center">
        	<strong style="line-height:82px;">0</strong>/200
        </span>
        <textarea class="pull-left" 
        style="width:850px; height:74px; padding:6px 0 0 20px; background-color:#fff; margin-top:1px" 
        name="txtComment" id="txtComment" cols="30" rows="10" placeholder="로그인하시면 방명록 등록이 가능합니다." disabled="disabled"></textarea>
        <span class="pull-left" ><a href="javascript:;" onclick="alert('로그인 후 이용 바랍니다.')"><img src="http://s.nx.com/S2/Game/baram/2016/renewal/coment_add_btn02.jpg" alt="댓글등록"></a></span>
    </div>	
    
    <div class="pull-left" style="margin-top:50px">
    	<p style="widht:100%; font-size:14px; color:#7c7c7c;">총
    	<span style="color:red">3</span>
    	개의 방명록이 있습니다.
    	</p>
    </div>
    
    
    <div>
			<table class="table">
			    <thead>
			      <tr>
			        <th>캐릭터명</th>
			        <th>레벨</th>
			        <th>내용</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>튀김티모</td>
			        <td>5</td>
			        <td>점화를 든 티모</td>
			      </tr>
			      <tr>
			        <td>서폿티모</td>
			        <td>8</td>
			        <td>ad와ap 그 사이의 티모</td>
			      </tr>
			      <tr>
			        <td>미드티모</td>
			        <td>12</td>
			        <td>트타보다 키큰 티모</td>
			      </tr>
			    </tbody>
			  </table>
			</div>
	
	
	
</div>	
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript"> 
	$(document).ready(function(){ 
		
		var id = $('#id').val();
		var greeting = $('#greeting').val();
		$('.updatebtn').on('click',function(){
			alert('id : '+id);
			alert('인사 : '+greeting);
			$.ajax({
				type:'POST',
				data : "id="+id,
				datatype:'json',
				url : 'updateGreeting',
				success : function(data){
					alert(9999);
				},
				error : function(xhr, status, error){
					alert('ajax error'+error );
				}
			});
		});
		$('.whybtn').on('click',function(){
			alert(900);
			
		});
		
    });

</script>

</body>
</html>