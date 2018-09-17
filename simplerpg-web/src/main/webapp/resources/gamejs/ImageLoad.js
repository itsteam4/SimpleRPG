var user = new Image(); 
user.addEventListener('load',userReady, false);
user.src = "resources/gamejs/imgs/character.png";
//sector 0
var slime = new Image(); 
slime.addEventListener('load',slimeReady, false);
slime.src = "resources/gamejs/imgs/slime.png";

var slime1 = new Image(); 
slime1.addEventListener('load',slime1Ready, false);
slime1.src = "resources/gamejs/imgs/slime.png";

//sector 1
var slime1_1 = new Image();
slime1_1.addEventListener('load',slime1_1Ready, false);
slime1_1.src = "resources/gamejs/imgs/slime.png";

var slime1_2 = new Image();
slime1_2.addEventListener('load',slime1_2Ready, false);
slime1_2.src = "resources/gamejs/imgs/slime.png";

var slime1_3 = new Image();
slime1_3.addEventListener('load',slime1_3Ready, false);
slime1_3.src = "resources/gamejs/imgs/slime.png";

//sector 2
var goblin2_1 = new Image();
goblin2_1.addEventListener('load', goblin2_1Ready, false);
goblin2_1.src = "resources/gamejs/imgs/goblin.png";

var goblin2_2 = new Image();
goblin2_2.addEventListener('load', goblin2_2Ready, false);
goblin2_2.src = "resources/gamejs/imgs/goblin.png";

var goblin2_3 = new Image();
goblin2_3.addEventListener('load', goblin2_3Ready, false);
goblin2_3.src = "resources/gamejs/imgs/goblin.png";

//sector 5
var slime2 = new Image(); 
slime2.addEventListener('load',slime2Ready, false);
slime2.src = "resources/gamejs/imgs/slime.png";

var slime5_2 = new Image(); 
slime5_2.addEventListener('load',slime5_2Ready, false);
slime5_2.src = "resources/gamejs/imgs/slime.png";

var slime5_3 = new Image(); 
slime5_3.addEventListener('load',slime5_3Ready, false);
slime5_3.src = "resources/gamejs/imgs/slime.png";

//sector 6
var goblin6_1 = new Image();
goblin6_1.addEventListener('load',goblin6_1Ready, false);
goblin6_1.src = "resources/gamejs/imgs/goblinboss.png";

var goblin6_2 = new Image(); 
goblin6_2.addEventListener('load',goblin6_2Ready, false);
goblin6_2.src = "resources/gamejs/imgs/goblin.png";

var goblin6_3 = new Image(); 
goblin6_3.addEventListener('load',goblin6_3Ready, false);
goblin6_3.src = "resources/gamejs/imgs/goblin.png";

//sector 7
var orc = new Image(); 
orc.addEventListener('load',orcReady, false);
orc.src = "resources/gamejs/imgs/orc.png";

//sector 10
var goblin10_1 = new Image(); 
goblin10_1.addEventListener('load',goblin10_1Ready, false);
goblin10_1.src = "resources/gamejs/imgs/goblin.png";

var slime10_2 = new Image(); 
slime10_2.addEventListener('load',slime10_2Ready, false);
slime10_2.src = "resources/gamejs/imgs/slime.png";

var slime10_3 = new Image(); 
slime10_3.addEventListener('load',slime10_3Ready, false);
slime10_3.src = "resources/gamejs/imgs/slime.png";

//sector 11
var slime11_1 = new Image(); 
slime11_1.addEventListener('load',slime11_1Ready, false);
slime11_1.src = "resources/gamejs/imgs/slime.png";

var goblin11_2 = new Image(); 
goblin11_2.addEventListener('load',goblin11_2Ready, false);
goblin11_2.src = "resources/gamejs/imgs/goblin.png";

var goblin11_3 = new Image(); 
goblin11_3.addEventListener('load',goblin11_3Ready, false);
goblin11_3.src = "resources/gamejs/imgs/goblin.png";

var goblin = new Image();
goblin.addEventListener('load',goblinReady, false);
goblin.src = "resources/gamejs/imgs/goblin.png";

function userReady() {
	//유저 이미지 로드되면 실행됨
	//유저 정보 수정 함수 호출
	User(user_xy);
}

function slimeReady(){
	//몹 정보 수정 함수 호출
	Slime(slime_xy);
}
function slime1Ready(){
	//몹 정보 수정 함수 호출
	Slime1(slime_xy1);
}
function slime2Ready(){
	//몹 정보 수정 함수 호출
	Slime2(slime_xy2);
}

function slime5_2Ready(){
	Slime5_2(slime5_2_xy);
}

function slime5_3Ready(){
	Slime5_3(slime5_3_xy);
}

function goblin10_1Ready(){
	Goblin10_1(goblin10_1_xy);
}

function slime10_2Ready(){
	Slime10_2(slime10_2_xy);
}

function slime10_3Ready(){
	Slime10_3(slime10_3_xy);
}

function slime1_1Ready(){
	Slime1_1(slime1_1_xy);
}

function slime1_2Ready(){
	Slime1_2(slime1_2_xy);
}

function slime1_3Ready(){
	Slime1_3(slime1_3_xy);
}

function goblin6_1Ready(){
	Goblin6_1(goblin6_1_xy);
}

function goblin6_2Ready(){
	Goblin6_2(goblin6_2_xy);
}

function goblin6_3Ready(){
	Goblin6_3(goblin6_3_xy);
}

function slime11_1Ready(){
	Slime11_1(slime11_1_xy);
}

function goblin11_2Ready(){
	Goblin11_2(goblin11_2_xy);
}

function goblin11_3Ready(){
	Goblin11_3(goblin11_3_xy);
}

function goblin2_1Ready(){
	Goblin2_1(goblin2_1_xy);
}

function goblin2_2Ready(){
	Goblin2_2(goblin2_2_xy);
}

function goblin2_3Ready(){
	Goblin2_3(goblin2_3_xy);
}

function orcReady(){
	Orc7_1(orc7_1_xy);
}

function goblinReady(){
	Goblin7_2(goblin7_2_xy);
}