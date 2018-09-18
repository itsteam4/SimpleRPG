var user = new Image(); 
user.addEventListener('load',userReady, false);
user.src = "resources/gamejs/imgs/character.png";

var slime = new Image(); 
slime.addEventListener('load',slimeReady, false);
slime.src = "resources/gamejs/imgs/slime.png";

var orc = new Image(); 
orc.addEventListener('load',orcReady, false);
orc.src = "resources/gamejs/imgs/orc.png";

var goblin = new Image();
goblin.addEventListener('load',goblinReady, false);
goblin.src = "resources/gamejs/imgs/goblin.png";

var goblinboss = new Image();
goblinboss.addEventListener('load',goblinbossReady, false);
goblinboss.src = "resources/gamejs/imgs/goblinboss.png";

function userReady() {
	//유저 이미지 로드되면 실행됨
	//유저 정보 수정 함수 호출
	User(user_xy);
}

function slimeReady(){
	Slime(slime_xy);
	Slime1(slime_xy1);
	Slime2(slime_xy2);
	Slime1_1(slime1_1_xy);
	Slime1_2(slime1_2_xy);
	Slime1_3(slime1_3_xy);
	Slime5_2(slime5_2_xy);
	Slime5_3(slime5_3_xy);
	Slime10_2(slime10_2_xy);
	Slime10_3(slime10_3_xy);
	Slime11_1(slime11_1_xy);
}

function goblinReady(){
	Goblin2_1(goblin2_1_xy);
	Goblin2_2(goblin2_2_xy);
	Goblin2_3(goblin2_3_xy);
	Goblin3_1(goblin3_1_xy);
	Goblin3_2(goblin3_2_xy);
	Goblin6_2(goblin6_2_xy);
	Goblin6_3(goblin6_3_xy);
	Goblin7_2(goblin7_2_xy);
	Goblin7_3(goblin7_3_xy);
	Goblin10_1(goblin10_1_xy);
	Goblin11_2(goblin11_2_xy);
	Goblin11_3(goblin11_3_xy);
	Goblin12_1(goblin12_1_xy);
}

function goblinbossReady(){
	Goblin6_1(goblin6_1_xy);
}

function orcReady(){
	Orc3_3(orc3_3_xy);
	Orc7_1(orc7_1_xy);
	Orc12_2(orc12_2_xy);
	Orc12_3(orc12_3_xy);
}