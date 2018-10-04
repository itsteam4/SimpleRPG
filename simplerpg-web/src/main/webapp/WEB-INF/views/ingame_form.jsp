<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html> 
<html>
	<head>
		<meta name="decorator" content="no" />
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
		<script src="resources/bootstrap/js/jquery-3.3.1.min.js?ver=1"></script>
		<script src="resources/bootstrap/js/popper.min.js?ver=1"></script>
		<script src="resources/bootstrap/js/bootstrap.min.js?ver=1"></script>
		<script src="resources/gamejs/phaser.js"></script>
		<script type="text/javascript" src="<c:url value="resources/sockjs-0.3.4.js"/>"></script>
		<title>WebGame</title>
		<style type="text/css">
			 canvas { border: 1px solid black; z-index: 2; }
			 body { background-image: url("resources/gamejs/imgs/background.jpg"); }
			 label { color: orange; }
			 div { color: orange; }
		</style>
		
	</head>
	<script type="text/javascript">
	/*
	var socket;
	if (!window.WebSocket) {
	  window.WebSocket = window.MozWebSocket;
	}
	if (window.WebSocket) {
	  socket = new WebSocket("ws://58.224.18.164:8888/websocket");
	  socket.onmessage = function(event) {
	    var ta = document.getElementById('responseText');
	    ta.value = ta.value + '\n' + event.data
	  };
	  socket.onopen = function(event) {
	    var ta = document.getElementById('responseText');
	    ta.value = "도비!!!!!도비도비";
	  };
	  socket.onclose = function(event) {
	    var ta = document.getElementById('responseText');
	    ta.value = ta.value + "Web Socket closed"; 
	  };
	} else {
	  alert("Your browser does not support Web Socket.");
	}

	function send(message) {
	  if (!window.WebSocket) { return; }
	  if (socket.readyState == WebSocket.OPEN) {
	    socket.send(message);
	  } else {
	    alert("Web Socket no opened.");
	  }
	}
	$(document).ready(function(){
		$('#btnclose').on('click',function(){
			socket.close();
	    });
	});
	*/
	</script>
	<body>
	<form class="ingame_form">

		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4" style="align-content: center;">
			</div>
			<div class="col-md-4">
				<input id="userkill" hidden="hidden"><p>
				<input id="userdead" hidden="hidden"><p><p>
				<input id="sector" hidden="hidden"><p><p>
				<input id="score" hidden="hidden"><p><p>
			</div>
		</div>
		
		<canvas id="gamescreen" style="position: absolute; top:100px; left: 200px;"></canvas>
		
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-3"></div>
			<div class="col-md-5">
			
				 <ul class="list-group" style="width: 500px; align-content: center; position: absolute; top: 90px; text-align: center;">
					 <li class="list-group-item active">
					 
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text">아이디</span>
							</div>
							<input readonly="readonly" id="id" value="${id}" style="text-align: center; width: 350px;">
						</div>
						
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text">채력&nbsp;&nbsp;&nbsp;&nbsp;</span>
							</div>
							<progress id="hpbar" value="0" max="0" style="width: 350px;"></progress>
						</div>
						
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text">공격력</span>
							</div>
							<input id="userpower" style="text-align: center; width: 350px;">
						</div>
						
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text">레벨&nbsp;&nbsp;&nbsp;&nbsp;</span>
							</div>
							<input id="userlv" style="text-align: center; width: 350px;">
						</div>
						
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text">경험치</span>
							</div>
							<progress id="exbar" value="0" max="0" style="width: 350px;" ></progress>
						</div>
						
					</li>
					<li class="list-group-item">
					<input id="sword" hidden="hidden"><input id="shild" hidden="hidden">
						<img id="wepon" alt="무기" src="">
						<img id="gard" alt="방패" src="">
					</li>
					<li class="list-group-item">
					 	<input type="text" name="message" value="Hello, World!"/><input type="button" value="보내기"
	       				onclick="send(this.form.message.value)" /><input id="btnclose" type="button" value="나가기" />
						<textarea id="responseText" style="width:400px;height:200px;"></textarea>
					 </li>
				 </ul>
				 
			</div>
		</div>

		<script src="resources/gamejs/ImageLoad.js?ver=1"></script>
		<script src="resources/gamejs/mobalive.js?ver=1"></script>
		<script src="resources/gamejs/map.js?ver=1"></script>
		<script src="resources/gamejs/common.js?ver=1"></script>
		<script src="resources/gamejs/mob.js?ver=1"></script>
		<script src="resources/gamejs/audio.js?ver=1"></script>
		<script src="resources/gamejs/sector.js?ver=1"></script>
	</form>
	</body>
</html>
