canvas.addEventListener("mousemove", onMouseMove, false);
canvas.addEventListener("click", onMouseClick, false);

var mouseX;
var mouseY;
function onMouseMove(e){
	mouseX = e.clientX - canvas.offsetLeft;
	mouseY = e.clientY - canvas.offsetTop;
}

var col = 4;
var row = 4;
function onMouseClick(e){		//클릭하면 update 로 좌표보냄
	ocol = col;
	orow = row;
	col = Math.floor(mouseX / 32);
	row = Math.floor(mouseY / 32);
	if(wordmap[row+cameraY][col+cameraX] != 1 && wordmap[row+cameraY][col+cameraX] != 3){
		col = ocol;
		row = orow;
	}
	alert(col*32+"/"+row*32);
	var tileId = (row * 19) + (col + row);
}

//메인루프 부른다!
var timer = setInterval(function (){
        main_loop();
},1500/50);

//매인루프 다!
var main_loop = function () {
	Update();		//이동 밎 전투 정보 
	drawScreen();
};

function Update(){
	
	UserDataUpdate();		//유저정보 관리 저장
	
	if(user_xy[0] != col * 32 || user_xy[1] != row  * 32){		//마우스 리스너에서 받은 좌표로 유저 이미지를 옮겨감
		if(user_xy[0] < col * 32){	//오른쪽
			user_xy[0] += userspeed;
		}
		if(user_xy[0] > col * 32){	//왼쪽
			user_xy[0] -= userspeed;
		}
		if(user_xy[1] < row * 32){	//아래
			user_xy[1] += userspeed;
		}
		if(user_xy[1] > row * 32){ //위
			user_xy[1] -= userspeed;
		}
	}
	
	// camera 이동  이동마다 sectorinfo 호출 섹터별 몹 과 표시할 유저 정보 기록
	if(user_xy[0] == 608){
		cameraX += 20;
		if(cameraX > 80){
			cameraX = 80;
			return;
		}
		sectorinfo();
		user_xy[0] = 32;
		col = 1;
	}
	if(user_xy[0] == 0){
		cameraX -= 20;
		if(cameraX < 0){
			cameraX = 0;
			return;
		}
		sectorinfo();
		user_xy[0] = 576;
		col = 18;
	}
	if(user_xy[1] == 608){
		cameraY += 20;
		if(cameraY > 40){
			cameraY = 40;
			return;
		}
		sectorinfo();
		user_xy[1] = 32;
		row = 1;
	}
	if(user_xy[1] == 0){
		cameraY -= 20;
		if(cameraY < 0){
			cameraY = 00;
			return;
		}
		sectorinfo();
		user_xy[1] = 576;
		row = 18;
	}
	
	
	//slime전투 시작 or 충돌감지
	if(user_xy[0] == slime_xy[0] && user_xy[1] == slime_xy[1]){
		slimeBattle();
	}
	if(user_xy[0] == slime_xy1[0] && user_xy[1] == slime_xy1[1]){
		slime1Battle();
	}
	if(user_xy[0] == slime_xy2[0] && user_xy[1] == slime_xy2[1]){
		slime2Battle();
	}
	if(user_xy[0] == slime5_2_xy[0] && user_xy[1] == slime5_2_xy[1]){
		slime5_2Battle();
	}
	if(user_xy[0] == slime5_3_xy[0] && user_xy[1] == slime5_3_xy[1]){
		slime5_3Battle();
	}
	if(user_xy[0] == goblin10_1_xy[0] && user_xy[1] == goblin10_1_xy[1]){
		goblin10_1Battle();
	}
	if(user_xy[0] == slime10_2_xy[0] && user_xy[1] == slime10_2_xy[1]){
		slime10_2Battle();
	}
	if(user_xy[0] == slime10_3_xy[0] && user_xy[1] == slime10_3_xy[1]){
		slime10_3Battle();
	}
	if(user_xy[0] == slime1_1_xy[0] && user_xy[1] == slime1_1_xy[1]){
		slime1_1Battle();
	}
	if(user_xy[0] == slime1_2_xy[0] && user_xy[1] == slime1_2_xy[1]){
		slime1_2Battle();
	}
	if(user_xy[0] == slime1_3_xy[0] && user_xy[1] == slime1_3_xy[1]){
		slime1_3Battle();
	}
	if(user_xy[0] == goblin6_1_xy[0] && user_xy[1] == goblin6_1_xy[1]){
		goblin6_1Battle();
	}
	if(user_xy[0] == goblin6_2_xy[0] && user_xy[1] == goblin6_2_xy[1]){
		goblin6_2Battle();
	}
	if(user_xy[0] == goblin6_3_xy[0] && user_xy[1] == goblin6_3_xy[1]){
		goblin6_3Battle();
	}
	if(user_xy[0] == slime11_1_xy[0] && user_xy[1] == slime11_1_xy[1]){
		slime11_1Battle();
	}
	if(user_xy[0] == goblin11_2_xy[0] && user_xy[1] == goblin11_2_xy[1]){
		goblin11_2Battle();
	}
	if(user_xy[0] == goblin11_3_xy[0] && user_xy[1] == goblin11_3_xy[1]){
		goblin11_3Battle();
	}
	
	//전투중 유저 사망시
	if(useralive == false){
		userdead++;
		alert("사망하셨습니다");
		//db에 모든정보를 저장 
		useralive = true;
		userhp = usermaxhp;
	}
	
}

//유저 채력 회복 함수
var regen = setInterval(function (){
	if(userhp < usermaxhp){
		userhp += 1;
	}
},1000/1);

//유저 정보 함수  디비 들어가서 정보 가져옴
var useralive = true;
var user_xy = [128,128];
var userspeed = 4;
var userposX;
var userposY;
var itemA;
var itemD;
var id;
id = $('#id').val();
function User(user_xy){
	
	//유저 초기 정보
	this.usersector = 0;		//유저 섹터 v
	this.userpos = user_xy;		//유저 위치 v
	this.item = [0,0];		//종합 점수에 +10 v
	this.usermaxhp = 100;	//레벨 보정으로 수치변경 
	this.userhp = usermaxhp;
	this.userpower = 10;
	this.userex = 0;		//100으로 나누어서 레벨 반영 v
	this.userlv = 1;		//레벨이 높을수록 스텟 보너스 ex 1 = 각각 1+ v
	this.userkill = 0;		//종합 점수에 +10 v
	this.userdead = 0;		//종합 점수에 -5 v
	this.userscore = 0;		//종합 점수 v
	
	// 디비 접속 구간 접속하여 데이터가 있다면 위 데이터 수정
	$.ajax({
		type:"POST",
		url:"UserDataLoding",
		data : { id },
		success: function(data){
			item[0] = data.itemA;
			item[1] = data.itemD;
			userex = data.userex;		//100으로 나누어서 레벨 반영 v
			userlv = data.userlv;		//레벨이 높을수록 스텟 보너스 ex 1 = 각각 1+ v
			userkill = data.userkill;		//종합 점수에 +10 v
			userdead = data.userdead;		//종합 점수에 -5 v
			userscore = data.userscore;		//종합 점수 v
			
			if(userlv > 1){		//db에 있는 레벨 보너스 적용
				usermaxhp += userlv - 1;
				userpower += userlv - 1;
			}
			
			switch(item[0]){		//db에있는 장비 보너스 적용
				case 0:
					break;
				case 1:
					userpower += 2;
					break;
				case 2:
					userpower += 4;
					break;
				case 3:
					userpower += 6;
			}
			switch(item[1]){
				case 0:
					break;
				case 1:
					usermaxhp += 10;
					break;
				case 2:
					usermaxhp += 20;
					break;
				case 3:
					usermaxhp += 30;
			}
			userhp = usermaxhp;
			ItemChenge();
		},
		error: function(xhr, status, error) {
			alert("유저 불러오기 실패");
		}
	});
}

var userattack = setInterval(function (){	//유저 공격 딜레이
    Uattack = true;
},1200/1);

	function UserDataUpdate(){		//메인 프레임 마다 유저정보 업데이트
		var maxex = userlv * 100;
		if(maxex <= userex){
			alert("레벨업! hp/at +1!");
			userlv ++;
			userpower += 1;		//디비 연동시 유저레벨로 스텟 보너스 부여
			usermaxhp += 1;
			userex = 0;
			userhp = usermaxhp; 
		}
		
		userscore = userlv * 10 + (userkill * 10) - (userdead * 5);
		$("#userhp").val(userhp);
		$("#hpbar").val(userhp);
		$("#hpbar").attr('max', usermaxhp);
		$("#userpower").val(userpower);
		$("#userex").val(userex+"/"+maxex);
		$("#exbar").val(userex);
		$("#exbar").attr('max', maxex);
		$("#userlv").val(userlv);
		$("#userkill").val(userkill);
		$("#userdead").val(userdead);
		$("#sword").val(item[0]);
		$("#shild").val(item[1]);
		$("#score").val(userscore);
		$("#sector").val(usersector);
		
	}
	
	var userdataUpdate = setInterval(function (){	// 5초 마다 유저 정보 업데이트
		//ajax 이용하여 디비에 데이터 너주기
		userposX = user_xy[0];
		userposY = user_xy[1];
		itemA = item[0];
		itemD = item[1];
		
		$.ajax({
			type:"POST",
			url:"getUserData",
			data : { id,
				usersector, 
				userposX, 
				userposY,
				itemA,
				itemD,
				userex,
				userlv,
				userkill,
				userdead,
				userscore },
				success: function(data){
					
				},
				error: function() {
					alert("유저 저장 실패");
				}
		});
	},5000/1);
	
	function ItemChenge(){		//user item 배열의 값대로 이미지 체인지
		if(item[0] == 1 && item[1] == 0){
			userIt = 128;
		}else if(item[0] == 0 && item[1] == 1){
			userIt = 64;
		}else if(item[0] == 1 && item[1] == 1){
			userIt = 192;
		}else if(item[0] == 0 && item[1] == 2){
			userIt = 256;
		}else if(item[0] == 2 && item[1] == 0){
			userIt = 320;
		}else if(item[0] == 1 && item[1] == 2){
			userIt = 384;
		}else if(item[0] == 2 && item[1] == 1){
			userIt = 448;
		}else if(item[0] == 2 && item[1] == 2){
			userIt = 512;
		}
		
	}