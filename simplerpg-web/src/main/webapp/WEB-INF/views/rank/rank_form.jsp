<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<div class="" style="width:100%; margin-bottom:50px; ">
				<div class="pull-left" style=" background:url('resources/image/rank/best_con_bg.jpg');margin-top:110px; height:225px; width:100%;">
					<div style=" width:100%; text-align:center">
						<div style=" width:265px; height:40px; margin-top:20px; display:inline-block;">
						<h1 style="margin-left:20px; color:#c13a3a; font-size:33px; ">2018.09.07</h1>
						</div>
					</div>
					<div style="margin-top:35px">
					<p style="font-size:20px; color:#345e76;">나의 순위를 확인하려면 로그인이 필요 합니다.</p>
					<div style="width:100%; text-align:center">
						
						<div style="width:230px; height:42px; background:url('resources/image/rank/bg_rank_view.jpg'); display:inline-block;">
							<a class="" href="#" style="text-align:right; color:#fff;
							 width:230px; height:42px; font-size:20px; display:inline-block;
							 text-decoration:none; padding-right:18px;
						 	">
						 	순위보기</a>
						</div>
					</div>
					</div>
				</div>
			</div>
			
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
				<div class="" style="width:900px; height:25px; display:inline-block;">
					<ul class="pull-left" style="list-style:none;">
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
			
			
			
			<div style="margin-top:25px; border-top:1px solid #2e2828;
			background:url('resources/image/rank/gold_bg.png') left 48px no-repeat;
			">
			<table class="table" style="border:0; border-collapse:collapse; border-spacing:0;">
			<colgroup>
                <col style="width:12%;">
                <col style="width:11.5%;">
                <col>
                <col style="width:17%;">
                <col style="width:17%;">
                <col style="width:16%;">
            </colgroup>
			    <thead style="">
			      <tr>
			        <th style="color:#747474; font-size:15px;  ">순위</th>
			        <th style="color:#747474; font-size:15px;">등락</th>
			        <th style="color:#747474; font-size:15px;">캐릭터명</th>
			        <th style="color:#747474; font-size:15px;">내용</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr style="border:0; border-collapse:collapse; border-spacing:0;">
				        <td style="color:#9b8769; font-size:100%; 
				        color:#fff; padding:13px 0; font-size:15px; text-align:center; vertical-align:middle;
				        ">
				        	<span>1위</span>
				        </td>
				        <td style="color:#fff; font-size:15px;
				        	padding:13px 0; text-align:center; vertical-align:middle;">
				        	<span style="background:url('resources/image/rank/top_rank_bg_back.png')left center no-repeat;
				        	padding:2px 0; display:inline-block; color:#000; width:128px;">
				        	<span>-</span>
				        	</span>
				        </td>
				        <td style="color:#fff; font-size:15px;
				        	padding:13px 0; text-align:center; vertical-align:middle;">
				        	<span class="profile" style="margin-right:20px;">
				        	<img src="http://avatar.baram.nexon.com/Profile/DrawingClipImgByID.aspx?loginId=임회@연" alt="캐릭터 이미지">
				        	</span>
				        	<a href="#" style="color:#fff; text-decoration:none;">임회</a>
			        	</td>
				        <td style="color:#fff; font-size:15px;
				        	padding:13px 0; text-align:center; vertical-align:middle;">???</td>
			      </tr>
			      
			      <tr>
				        <td style="color:#9b8769; font-size:100%; 
				        color:#fff; padding:13px 0; font-size:15px; text-align:center; vertical-align:middle;
				        ">
				        	<span>2위</span>
				        </td>
				        <td style="color:#fff; font-size:15px;
				        	padding:13px 0; text-align:center; vertical-align:middle;">
				        	<span style="background:url('resources/image/rank/top_rank_bg_back.png')left center no-repeat;
				        	padding:2px 0; display:inline-block; color:#000; width:128px;">
				        	<span>+1</span>
				        	</span>
				        </td>
				        <td style="color:#fff; font-size:15px;
				        	padding:13px 0; text-align:center; vertical-align:middle;">
				        	<span class="profile" style="margin-right:20px;">
				        	<img src="http://avatar.baram.nexon.com/Profile/DrawingClipImgByID.aspx?loginId=임회@연" alt="캐릭터 이미지">
				        	</span>
				        	<a href="#" style="color:#fff; text-decoration:none;">임회</a>
			        	</td>
				        <td style="color:#fff; font-size:15px;
				        	padding:13px 0; text-align:center; vertical-align:middle;">???</td>
			      </tr>
			      
			      <tr>
				        <td style="color:#9b8769; font-size:100%; 
				        color:#fff; padding:13px 0; font-size:15px; text-align:center; vertical-align:middle;
				        ">
				        	<span>3위</span>
				        </td>
				        <td style="color:#fff; font-size:15px;
				        	padding:13px 0; text-align:center; vertical-align:middle;">
				        	<span style="background:url('resources/image/rank/top_rank_bg_back.png')left center no-repeat;
				        	padding:2px 0; display:inline-block; color:#000; width:128px;">
				        	<span>+5</span>
				        	</span>
				        </td>
				        <td style="color:#fff; font-size:15px;
				        	padding:13px 0; text-align:center; vertical-align:middle;">
				        	<span class="profile" style="margin-right:20px;">
				        	<img src="http://avatar.baram.nexon.com/Profile/DrawingClipImgByID.aspx?loginId=임회@연" alt="캐릭터 이미지">
				        	</span>
				        	<a href="#" style="color:#fff; text-decoration:none;">임회</a>
			        	</td>
				        <td style="color:#fff; font-size:15px;
				        	padding:13px 0; text-align:center; vertical-align:middle;">???</td>
			      </tr>
			      
			      <tr>
			        <td style="color:#9b8769; font-size:100%; border-bottom: 1px solid #ecebe9;">4</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">탑티모</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">24</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">???</td>
			      </tr>
			      <tr>
			        <td style="color:#9b8769; font-size:100%; border-bottom: 1px solid #ecebe9;">5</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">미드티모</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">24</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">???</td>
			      </tr>
			      <tr>
			        <td style="color:#9b8769; font-size:100%; border-bottom: 1px solid #ecebe9;">6</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">미드티모</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">24</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">???</td>
			      </tr>
			      <tr>
			        <td style="color:#9b8769; font-size:100%; border-bottom: 1px solid #ecebe9;">7</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">미드티모</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">24</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">???</td>
			      </tr>
			      <tr>
			        <td style="color:#9b8769; font-size:100%; border-bottom: 1px solid #ecebe9;">8</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">미드티모</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">24</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">???</td>
			      </tr>
			      <tr>
			        <td style="color:#9b8769; font-size:100%; border-bottom: 1px solid #ecebe9;">9</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">미드티모</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">24</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">???</td>
			      </tr>
			      <tr>
			        <td style="color:#9b8769; font-size:100%; border-bottom: 1px solid #ecebe9;">10</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">333</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">24</td>
			        <td style="color:#242323; font-size:15px;border-bottom: 1px solid #ecebe9; ">???</td>
			      </tr>
			    </tbody>
			  </table>
			</div>
			
			
			
			
		
		
	</div>
</form>	
</body>
</html>