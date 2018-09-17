		//sector 0
//slime 정보
	var slimealive = true;
	var slime_xy = [416, 416];
	function Slime(slime_xy){
		this.slimehp = 50;
		this.slimepower = 5;
	}

	//slime전투 로직
	function slimeBattle(){
		if(Uattack == true){
			
			userAttackSound(); 	//오디오의 효과음 
			slimehp -= userpower;
			userhp -= slimepower;
			Uattack = false;
		}
		
		if(slimehp < 0){		//슬라임 사망시
			slimealive = false;
			userkill ++;
			userex += 20;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 1){
					item[0] = 1;
					userpower += 2;
					alert("슬라임 소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 1){
					item[1] = 1;
					usermaxhp += 10;
					alert("슬라임 쉴드 획득!");
				}
			}
			ItemChenge();
			slime_xy = [999, 999];
			slimeDead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}
		
	}

	//슬라임 리젠
	function slimeDead(){
		setTimeout(function(){ 
			slime_xy = [416, 416];
			slimealive = true; 
			slimehp = 50;
			sectorinfo();
		}, 20000);
	}
	
//slime1 정보
	var slime1alive = true;
	var slime_xy1 = [480, 448];
	function Slime1(slime_xy1){
		this.slime1hp = 50;
		this.slime1power = 5;
	}

	//slime1전투 로직
	function slime1Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			slime1hp -= userpower;
			userhp -= slime1power;
			Uattack = false;
		}

		if(slime1hp < 0){		//슬라임1 사망시
			slime1alive = false;
			userkill ++;
			userex += 20;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 1){
					item[0] = 1;
					userpower += 2;
					alert("슬라임 소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 1){
					item[1] = 1;
					usermaxhp += 10;
					alert("슬라임 쉴드 획득!");
				}
			}
			ItemChenge();
			slime_xy1 = [999, 999];
			slime1Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//슬라임1 리젠
	function slime1Dead(){
		setTimeout(function(){ 
			slime_xy1 = [480, 448];
			slime1alive = true; 
			slime1hp = 50; 
			sectorinfo();
		}, 20000);
	}
	
		//sector 1
	//slime1_1 정보
	var slime1_1alive = true;
	var slime1_1_xy = [480, 448];
	function Slime1_1(slime1_1_xy){
		this.slime1_1hp = 50;
		this.slime1_1power = 5;
	}

	//slime1_1전투 로직
	function slime1_1Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			slime1_1hp -= userpower;
			userhp -= slime1_1power;
			Uattack = false;
		}

		if(slime1_1hp < 0){		//슬라임1 사망시
			slime1_1alive = false;
			userkill ++;
			userex += 20;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 1){
					item[0] = 1;
					userpower += 2;
					alert("슬라임 소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 1){
					item[1] = 1;
					usermaxhp += 10;
					alert("슬라임 쉴드 획득!");
				}
			}
			ItemChenge();
			slime1_1_xy = [999, 999];
			slime1_1Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//slime1_1 리젠
	function slime1_1Dead(){
		setTimeout(function(){ 
			slime1_1_xy = [480, 448];
			slime1_1alive = true; 
			slime1_1hp = 50; 
			sectorinfo();
		}, 20000);
	}
	
	//slime1_2 정보
	var slime1_2alive = true;
	var slime1_2_xy = [192, 224];
	function Slime1_2(slime1_2_xy){
		this.slime1_2hp = 50;
		this.slime1_2power = 5;
	}

	//slime1_2전투 로직
	function slime1_2Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			slime1_2hp -= userpower;
			userhp -= slime1_2power;
			Uattack = false;
		}

		if(slime1_2hp < 0){		//슬라임1 사망시
			slime1_2alive = false;
			userkill ++;
			userex += 20;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 1){
					item[0] = 1;
					userpower += 2;
					alert("슬라임 소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 1){
					item[1] = 1;
					usermaxhp += 10;
					alert("슬라임 쉴드 획득!");
				}
			}
			ItemChenge();
			slime1_2_xy = [999, 999];
			slime1_2Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//slime1_2 리젠
	function slime1_2Dead(){
		setTimeout(function(){ 
			slime1_2_xy = [192, 224];
			slime1_2alive = true; 
			slime1_2hp = 50; 
			sectorinfo();
		}, 20000);
	}
	
	//slime1_3 정보
	var slime1_3alive = true;
	var slime1_3_xy = [192, 224];
	function Slime1_3(slime1_3_xy){
		this.slime1_3hp = 50;
		this.slime1_3power = 5;
	}

	//slime1_3전투 로직
	function slime1_3Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			slime1_3hp -= userpower;
			userhp -= slime1_3power;
			Uattack = false;
		}

		if(slime1_3hp < 0){		//슬라임1 사망시
			slime1_3alive = false;
			userkill ++;
			userex += 20;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 1){
					item[0] = 1;
					userpower += 2;
					alert("슬라임 소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 1){
					item[1] = 1;
					usermaxhp += 10;
					alert("슬라임 쉴드 획득!");
				}
			}
			ItemChenge();
			slime1_3_xy = [999, 999];
			slime1_3Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//slime1_3 리젠
	function slime1_3Dead(){
		setTimeout(function(){ 
			slime1_3_xy = [192, 224];
			slime1_3alive = true; 
			slime1_3hp = 50; 
			sectorinfo();
		}, 20000);
	}
	
		//sector 2
	
	//goblin2_1 정보
	var goblin2_1alive = true;
	var goblin2_1_xy = [384, 320];
	function Goblin2_1(goblin2_1_xy){
		this.goblin2_1hp = 75;
		this.goblin2_1power = 8;
	}
	//goblin2_1전투 로직
	function goblin2_1Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			goblin2_1hp -= userpower;
			userhp -= goblin2_1power;
			Uattack = false;
		}

		if(goblin2_1hp < 0){		//goblin2_1 사망시
			goblin2_1alive = false;
			userkill ++;
			userex += 40;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 2){
					
					switch(item[0]){		//기존의 장비를 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						userpower -= 2;
						break;
					}
					
					item[0] = 2;
					userpower += 4;
					alert("철소드 획득!");
				}
			}else if(drop >= 8){
				
				if(item[1] < 2){
					switch(item[1]){		//기존 아이템을 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						usermaxhp -= 10;
						break;
					}
					
				
					item[1] = 2;
					usermaxhp += 20;
					alert("철쉴드 획득!");
				}
			}
			ItemChenge();
			goblin2_1_xy = [999, 999];
			goblin2_1Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//goblin2_1 리젠
	function goblin2_1Dead(){
		setTimeout(function(){ 
			goblin2_1_xy = [384, 320];
			goblin2_1alive = true; 
			goblin2_1hp = 75; 
			sectorinfo();
		}, 20000);
	}
	
	//goblin2_2 정보
	var goblin2_2alive = true;
	var goblin2_2_xy = [288, 416];
	function Goblin2_2(goblin2_2_xy){
		this.goblin2_2hp = 75;
		this.goblin2_2power = 8;
	}
	//goblin2_2전투 로직
	function goblin2_2Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			goblin2_2hp -= userpower;
			userhp -= goblin2_2power;
			Uattack = false;
		}

		if(goblin2_2hp < 0){		//goblin2_2 사망시
			goblin2_2alive = false;
			userkill ++;
			userex += 40;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 2){
					
					switch(item[0]){		//기존의 장비를 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						userpower -= 2;
						break;
					}
					
					item[0] = 2;
					userpower += 4;
					alert("철소드 획득!");
				}
			}else if(drop >= 8){
				
				if(item[1] < 2){
					switch(item[1]){		//기존 아이템을 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						usermaxhp -= 10;
						break;
					}
					
				
					item[1] = 2;
					usermaxhp += 20;
					alert("철쉴드 획득!");
				}
			}
			ItemChenge();
			goblin2_2_xy = [999, 999];
			goblin2_2Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//goblin2_2 리젠
	function goblin2_2Dead(){
		setTimeout(function(){ 
			goblin2_2_xy = [288, 416];
			goblin2_2alive = true; 
			goblin2_2hp = 75; 
			sectorinfo();
		}, 20000);
	}
	
	//goblin2_3 정보
	var goblin2_3alive = true;
	var goblin2_3_xy = [480, 448];
	function Goblin2_3(goblin2_3_xy){
		this.goblin2_3hp = 75;
		this.goblin2_3power = 8;
	}
	//goblin2_3전투 로직
	function goblin2_3Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			goblin2_3hp -= userpower;
			userhp -= goblin2_3power;
			Uattack = false;
		}

		if(goblin2_3hp < 0){		//goblin2_3 사망시
			goblin2_3alive = false;
			userkill ++;
			userex += 40;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 2){
					
					switch(item[0]){		//기존의 장비를 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						userpower -= 2;
						break;
					}
					
					item[0] = 2;
					userpower += 4;
					alert("철소드 획득!");
				}
			}else if(drop >= 8){
				
				if(item[1] < 2){
					switch(item[1]){		//기존 아이템을 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						usermaxhp -= 10;
						break;
					}
					
				
					item[1] = 2;
					usermaxhp += 20;
					alert("철쉴드 획득!");
				}
			}
			ItemChenge();
			goblin2_3_xy = [999, 999];
			goblin2_3Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//goblin2_3 리젠
	function goblin2_3Dead(){
		setTimeout(function(){ 
			goblin2_3_xy = [480, 448];
			goblin2_3alive = true; 
			goblin2_3hp = 75; 
			sectorinfo();
		}, 20000);
	}
	
		//sector 5
	//slime2 정보
	var slime2alive = true;
	var slime_xy2 = [288, 352];
	function Slime2(slime_xy2){
		this.slime2hp = 50;
		this.slime2power = 5;
	}

	//slime2전투 로직
	function slime2Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			slime2hp -= userpower;
			userhp -= slime2power;
			Uattack = false;
		}

		if(slime2hp < 0){		//슬라임1 사망시
			slime2alive = false;
			userkill ++;
			userex += 20;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 1){
					item[0] = 1;
					userpower += 2;
					alert("슬라임 소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 1){
					item[1] = 1;
					usermaxhp += 10;
					alert("슬라임 쉴드 획득!");
				}
			}
			ItemChenge();
			slime_xy2 = [999, 999];
			slime2Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//슬라임2 리젠
	function slime2Dead(){
		setTimeout(function(){ 
			slime_xy2 = [288, 352];
			slime2alive = true; 
			slime2hp = 50; 
			sectorinfo();
		}, 20000);
	}
	
	//slime5_2 정보
	var slime5_2alive = true;
	var slime5_2_xy = [384, 256];
	function Slime5_2(slime5_2_xy){
		this.slime5_2hp = 50;
		this.slime5_2power = 5;
	}

	//slime5_2전투 로직
	function slime5_2Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			slime5_2hp -= userpower;
			userhp -= slime5_2power;
			Uattack = false;
		}

		if(slime5_2hp < 0){		//slime5_2 사망시
			slime5_2alive = false;
			userkill ++;
			userex += 20;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 1){
					item[0] = 1;
					userpower += 2;
					alert("슬라임 소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 1){
					item[1] = 1;
					usermaxhp += 10;
					alert("슬라임 쉴드 획득!");
				}
			}
			ItemChenge();
			slime5_2_xy = [999, 999];
			slime5_2Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//slime5_2 리젠
	function slime5_2Dead(){
		setTimeout(function(){ 
			slime5_2_xy = [384, 256];
			slime5_2alive = true; 
			slime5_2hp = 50; 
			sectorinfo();
		}, 20000);
	}
	
	//slime5_3 정보
	var slime5_3alive = true;
	var slime5_3_xy = [224, 192];
	function Slime5_3(slime5_3_xy){
		this.slime5_3hp = 50;
		this.slime5_3power = 5;
	}

	//slime5_3전투 로직
	function slime5_3Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			slime5_3hp -= userpower;
			userhp -= slime5_3power;
			Uattack = false;
		}

		if(slime5_3hp < 0){		//slime5_2 사망시
			slime5_3alive = false;
			userkill ++;
			userex += 20;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 1){
					item[0] = 1;
					userpower += 2;
					alert("슬라임 소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 1){
					item[1] = 1;
					usermaxhp += 10;
					alert("슬라임 쉴드 획득!");
				}
			}
			ItemChenge();
			slime5_3_xy = [999, 999];
			slime5_3Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//slime5_3 리젠
	function slime5_3Dead(){
		setTimeout(function(){ 
			slime5_3_xy = [224, 192];
			slime5_3alive = true; 
			slime5_3hp = 50; 
			sectorinfo();
		}, 20000);
	}
	
		//sector 6
	//goblin6_1 정보
	var goblin6_1alive = true;
	var goblin6_1_xy = [160, 160];
	function Goblin6_1(goblin6_1_xy){
		this.goblin6_1hp = 100;
		this.goblin6_1power = 10;
	}
	//goblin6_1전투 로직
	function goblin6_1Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			goblin6_1hp -= userpower;
			userhp -= goblin6_1power;
			Uattack = false;
		}

		if(goblin6_1hp < 0){		//goblin6_1 사망시
			goblin6_1alive = false;
			userkill ++;
			userex += 80;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 2){
					
					switch(item[0]){		//기존의 장비를 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						userpower -= 2;
						break;
					}
					
					item[0] = 2;
					userpower += 4;
					alert("철소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 2){
					switch(item[1]){		//기존 아이템을 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						usermaxhp -= 10;
						break;
					}
					
					item[1] = 2;
					usermaxhp += 20;
					alert("철쉴드 획득!");
				}
			}
			ItemChenge();
			goblin6_1_xy = [999, 999];
			goblin6_1Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//goblin6_1 리젠
	function goblin6_1Dead(){
		setTimeout(function(){ 
			goblin6_1_xy = [160, 160];
			goblin6_1alive = true; 
			goblin6_1hp = 100; 
			sectorinfo();
		}, 20000);
	}
	
	//goblin6_2 정보
	var goblin6_2alive = true;
	var goblin6_2_xy = [160, 320];
	function Goblin6_2(goblin6_2_xy){
		this.goblin6_2hp = 75;
		this.goblin6_2power = 8;
	}
	//goblin6_2전투 로직
	function goblin6_2Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			goblin6_2hp -= userpower;
			userhp -= goblin6_2power;
			Uattack = false;
		}

		if(goblin6_2hp < 0){		//goblin6_2 사망시
			goblin6_2alive = false;
			userkill ++;
			userex += 40;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 2){
					
					switch(item[0]){		//기존의 장비를 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						userpower -= 2;
						break;
					}
					
					item[0] = 2;
					userpower += 4;
					alert("철소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 2){
					switch(item[1]){		//기존 아이템을 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						usermaxhp -= 10;
						break;
					}
					
					item[1] = 2;
					usermaxhp += 20;
					alert("철쉴드 획득!");
				}
			}
			ItemChenge();
			goblin6_2_xy = [999, 999];
			goblin6_2Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//goblin6_2 리젠
	function goblin6_2Dead(){
		setTimeout(function(){ 
			goblin6_2_xy = [160, 320];
			goblin6_2alive = true; 
			goblin6_2hp = 75; 
			sectorinfo();
		}, 20000);
	}
	
	//goblin6_3 정보
	var goblin6_3alive = true;
	var goblin6_3_xy = [352, 192];
	function Goblin6_3(goblin6_3_xy){
		this.goblin6_3hp = 75;
		this.goblin6_3power = 8;
	}
	//goblin6_3전투 로직
	function goblin6_3Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			goblin6_3hp -= userpower;
			userhp -= goblin6_3power;
			Uattack = false;
		}

		if(goblin6_3hp < 0){		//goblin6_3 사망시
			goblin6_3alive = false;
			userkill ++;
			userex += 40;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 2){
					
					switch(item[0]){		//기존의 장비를 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						userpower -= 2;
						break;
					}
					
					item[0] = 2;
					userpower += 4;
					alert("철소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 2){
					switch(item[1]){		//기존 아이템을 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						usermaxhp -= 10;
						break;
					}
					
					item[1] = 2;
					usermaxhp += 20;
					alert("철쉴드 획득!");
				}
			}
			ItemChenge();
			goblin6_3_xy = [999, 999];
			goblin6_3Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//goblin6_3 리젠
	function goblin6_3Dead(){
		setTimeout(function(){ 
			goblin6_3_xy = [352, 192];
			goblin6_3alive = true; 
			goblin6_3hp = 75; 
			sectorinfo();
		}, 20000);
	}
		
		//sector 7
	//orc7_1 정보
	var orc7_1alive = true;
	var orc7_1_xy = [480, 288];
	function Orc7_1(orc7_1_xy){
		this.orc7_1hp = 150;
		this.orc7_1power = 20;
	}
	
	//orc7_1전투 로직		//다른 오크 겍체도 이용가능한지??? 실패 mob 정보 종류 수정해야 가능
	function orc7_1Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			orc7_1hp -= userpower;
			userhp -= orc7_1power;
			Uattack = false;
		}

		if(orc7_1hp < 0){		//orc7_1 사망시
			orc7_1alive = false;
			userkill ++;
			userex += 100;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 3){
					
					switch(item[0]){		//기존의 장비를 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						userpower -= 2;
						break;
					case 2:
						userpower -= 4;
						break;
					}
					
					item[0] = 3;
					userpower += 8;
					alert("강철소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 3){
					switch(item[1]){		//기존 아이템을 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						usermaxhp -= 10;
						break;
					case 2:
						usermaxhp -= 20;
						break;
					}
					
					item[1] = 3;
					usermaxhp += 40;
					alert("강철쉴드 획득!");
				}
			}
			ItemChenge();
			orc7_1_xy = [999, 999];
			orc7_1Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//orc7_1 리젠
	function orc7_1Dead(){
		setTimeout(function(){ 
			orc7_1_xy = [480, 288];
			orc7_1alive = true; 
			orc7_1hp = 150; 
			sectorinfo();
		}, 20000);
	}
	
	//goblin7_2 정보
	var goblin7_2alive = true;
	var goblin7_2_xy = [352, 352];
	function Goblin7_2(goblin7_2_xy){
		this.goblin7_2hp = 75;
		this.goblin7_2power = 8;
	}
	//goblin7_2전투 로직
	function goblin7_2Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			goblin7_2hp -= userpower;
			userhp -= goblin7_2power;
			Uattack = false;
		}

		if(goblin7_2hp < 0){		//goblin7_2 사망시
			goblin7_2alive = false;
			userkill ++;
			userex += 40;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 2){
					
					switch(item[0]){		//기존의 장비를 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						userpower -= 2;
						break;
					}
					
					item[0] = 2;
					userpower += 4;
					alert("철소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 2){
					switch(item[1]){		//기존 아이템을 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						usermaxhp -= 10;
						break;
					}
				
					item[1] = 2;
					usermaxhp += 20;
					alert("철쉴드 획득!");
				}
			}
			ItemChenge();
			goblin7_2_xy = [999, 999];
			goblin7_2Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//goblin7_2 리젠
	function goblin7_2Dead(){
		setTimeout(function(){ 
			goblin7_2_xy = [352, 352];
			goblin7_2alive = true; 
			goblin7_2hp = 75; 
			sectorinfo();
		}, 20000);
	}
	
		//sector10
	//goblin10_1 정보
	var goblin10_1alive = true;
	var goblin10_1_xy = [288, 352];
	function Goblin10_1(goblin10_1_xy){
		this.goblin10_1hp = 75;
		this.goblin10_1power = 8;
	}
	//goblin10_1전투 로직
	function goblin10_1Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			goblin10_1hp -= userpower;
			userhp -= goblin10_1power;
			Uattack = false;
		}

		if(goblin10_1hp < 0){		//goblin10_1 사망시
			goblin10_1alive = false;
			userkill ++;
			userex += 40;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 2){
					
					switch(item[0]){		//기존의 장비를 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						userpower -= 2;
						break;
					}
					
					item[0] = 2;
					userpower += 4;
					alert("철소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 2){
					switch(item[1]){		//기존 아이템을 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						usermaxhp -= 10;
						break;
					}
				
					item[1] = 2;
					usermaxhp += 20;
					alert("철쉴드 획득!");
				}
			}
			ItemChenge();
			goblin10_1_xy = [999, 999];
			goblin10_1Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//goblin10_1 리젠
	function goblin10_1Dead(){
		setTimeout(function(){ 
			goblin10_1_xy = [288, 352];
			goblin10_1alive = true; 
			goblin10_1hp = 75; 
			sectorinfo();
		}, 20000);
	}
	
	//slime10_2 정보
	var slime10_2alive = true;
	var slime10_2_xy = [448, 128];
	function Slime10_2(slime10_2_xy){
		this.slime10_2hp = 50;
		this.slime10_2power = 5;
	}
	
	//slime10_2전투 로직
	function slime10_2Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			slime10_2hp -= userpower;
			userhp -= slime10_2power;
			Uattack = false;
		}

		if(slime10_2hp < 0){		//slime5_2 사망시
			slime10_2alive = false;
			userkill ++;
			userex += 20;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 1){
					item[0] = 1;
					userpower += 2;
					alert("슬라임 소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 1){
					item[1] = 1;
					usermaxhp += 10;
					alert("슬라임 쉴드 획득!");
				}
			}
			ItemChenge();
			slime10_2_xy = [999, 999];
			slime10_2Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//slime10_2 리젠
	function slime10_2Dead(){
		setTimeout(function(){ 
			slime10_2_xy = [448, 128];
			slime10_2alive = true; 
			slime10_2hp = 50; 
			sectorinfo();
		}, 20000);
	}
	
	//slime10_3 정보
	var slime10_3alive = true;
	var slime10_3_xy = [192, 288];
	function Slime10_3(slime10_3_xy){
		this.slime10_3hp = 50;
		this.slime10_3power = 5;
	}
	
	//slime10_3전투 로직
	function slime10_3Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			slime10_3hp -= userpower;
			userhp -= slime10_3power;
			Uattack = false;
		}

		if(slime10_3hp < 0){		//slime5_2 사망시
			slime10_3alive = false;
			userkill ++;
			userex += 20;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 1){
					item[0] = 1;
					userpower += 2;
					alert("슬라임 소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 1){
					item[1] = 1;
					usermaxhp += 10;
					alert("슬라임 쉴드 획득!");
				}
			}
			ItemChenge();
			slime10_3_xy = [999, 999];
			slime10_3Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//slime10_3 리젠
	function slime10_3Dead(){
		setTimeout(function(){ 
			slime10_3_xy = [192, 288];
			slime10_3alive = true; 
			slime10_3hp = 50; 
			sectorinfo();
		}, 20000);
	}
	
		//sector 11
	
	//slime11_1 정보
	var slime11_1alive = true;
	var slime11_1_xy = [192, 160];
	function Slime11_1(slime11_1_xy){
		this.slime11_1hp = 50;
		this.slime11_1power = 5;
	}
	
	//slime11_1전투 로직
	function slime11_1Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			slime11_1hp -= userpower;
			userhp -= slime11_1power;
			Uattack = false;
		}

		if(slime11_1hp < 0){		//slime5_2 사망시
			slime11_1alive = false;
			userkill ++;
			userex += 20;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 1){
					item[0] = 1;
					userpower += 2;
					alert("슬라임 소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 1){
					item[1] = 1;
					usermaxhp += 10;
					alert("슬라임 쉴드 획득!");
				}
			}
			ItemChenge();
			slime11_1_xy = [999, 999];
			slime11_1Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//slime11_1 리젠
	function slime11_1Dead(){
		setTimeout(function(){ 
			slime11_1_xy = [192, 160];
			slime11_1alive = true; 
			slime11_1hp = 50; 
			sectorinfo();
		}, 20000);
	}
	
	//goblin11_2 정보
	var goblin11_2alive = true;
	var goblin11_2_xy = [288, 256];
	function Goblin11_2(goblin11_2_xy){
		this.goblin11_2hp = 75;
		this.goblin11_2power = 8;
	}
	//goblin11_2전투 로직
	function goblin11_2Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			goblin11_2hp -= userpower;
			userhp -= goblin11_2power;
			Uattack = false;
		}

		if(goblin11_2hp < 0){		//goblin11_2 사망시
			goblin11_2alive = false;
			userkill ++;
			userex += 40;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 2){
					
					switch(item[0]){		//기존의 장비를 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						userpower -= 2;
						break;
					}
					
					item[0] = 2;
					userpower += 4;
					alert("철소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 2){
					switch(item[1]){		//기존 아이템을 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						usermaxhp -= 10;
						break;
					}
					
				
					item[1] = 2;
					usermaxhp += 20;
					alert("철쉴드 획득!");
				}
			}
			ItemChenge();
			goblin11_2_xy = [999, 999];
			goblin11_2Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//goblin11_2 리젠
	function goblin11_2Dead(){
		setTimeout(function(){ 
			goblin11_2_xy = [288, 256];
			goblin11_2alive = true; 
			goblin11_2hp = 75; 
			sectorinfo();
		}, 20000);
	}
	
	//goblin11_3 정보
	var goblin11_3alive = true;
	var goblin11_3_xy = [352, 96];
	function Goblin11_3(goblin11_3_xy){
		this.goblin11_3hp = 75;
		this.goblin11_3power = 8;
	}
	//goblin11_3전투 로직
	function goblin11_3Battle(){
		if(Uattack == true){

			userAttackSound(); 	//오디오의 효과음 

			goblin11_3hp -= userpower;
			userhp -= goblin11_3power;
			Uattack = false;
		}

		if(goblin11_3hp < 0){		//goblin11_3 사망시
			goblin11_3alive = false;
			userkill ++;
			userex += 40;
			
			var drop = Math.floor(Math.random() * (10 - 1 + 1)) + 1;		//아이템 드랍 후 유저 정보 수정
			if(drop <= 3){
				if(item[0] < 2){
					
					switch(item[0]){		//기존의 장비를 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						userpower -= 2;
						break;
					}
					
					item[0] = 2;
					userpower += 4;
					alert("철소드 획득!");
				}
			}else if(drop >= 8){
				if(item[1] < 2){
					switch(item[1]){		//기존 아이템을 검사후 보너스 삭제
					case 0:
						break;
					case 1:
						usermaxhp -= 10;
						break;
					}
					
				
					item[1] = 2;
					usermaxhp += 20;
					alert("철쉴드 획득!");
				}
			}
			ItemChenge();
			goblin11_3_xy = [999, 999];
			goblin11_3Dead();
		}
		if(userhp < 0){		//유저 사망시
			useralive = false;
		}

	}

	//goblin11_3 리젠
	function goblin11_3Dead(){
		setTimeout(function(){ 
			goblin11_3_xy = [352, 96];
			goblin11_3alive = true; 
			goblin11_3hp = 75; 
			sectorinfo();
		}, 20000);
	}