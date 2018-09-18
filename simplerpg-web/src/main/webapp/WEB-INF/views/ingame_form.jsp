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
		<script src="resources/bootstrap/js/jquery-3.3.1.min.js"></script>
		<script src="resources/bootstrap/js/popper.min.js"></script>
		<script src="resources/bootstrap/js/bootstrap.min.js"></script>
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
				<label>simplerpg</label>
			</div>
			<div class="col-md-4"></div>
		</div>
		
		<canvas id="gamescreen" style="position: absolute; top:100px; left: 200px;"></canvas>
		
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-3"></div>
			<div class="col-md-5">
				<label>아이디:</label><input id="id" value="${id}"><p>
				<label>채력:</label><input id="userhp">
				<progress id="hpbar" value="0" max="0"></progress><p>
				<label>공격력:</label><input id="userpower"><p>
				<label>레벨:</label><input id="userlv"><p>
				<label>경험치:</label><input id="userex">
				<progress id="exbar" value="0" max="0"></progress><p>
				<label>킬:</label><input id="userkill"><p>
				<label>뎃:</label><input id="userdead"><p><p>
				<label>섹터:</label><input id="sector"><p><p>
				
				
				<label>무기</label><input id="sword"><label>-방패</label><input id="shild"><p><p>
				
				<label>점수:</label><input id="score"><p><p>
				
				<input type="text" name="message" value="Hello, World!"/><input type="button" value="보내기"
       			onclick="send(this.form.message.value)" /><input id="btnclose" type="button" value="나가기" />
				<textarea id="responseText" style="width:400px;height:200px;"></textarea>
				
			</div>
		</div>
		<script src="resources/gamejs/ImageLoad.js"></script>
		<script src="resources/gamejs/map.js"></script>
		<script src="resources/gamejs/common.js"></script>
		<script src="resources/gamejs/mob.js"></script>
		<script src="resources/gamejs/audio.js"></script>
		<script src="resources/gamejs/sector.js"></script>
	</form>
	</body>
</html>
