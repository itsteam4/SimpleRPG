function sectorinfo(){
	var sectorX = cameraX / 20;
	var sectorY = cameraY / 20;
	var sectorNum = (sectorY * 4) + (sectorX + sectorY);
	usersector = sectorNum; 
	
	if(sectorNum == 0){
		if(slimealive){
			slime_xy = [416, 416];
		}
		if(slime1alive){
			slime_xy1 = [480, 448];
		}
	}else {
		slime_xy = [999, 999];
		slime_xy1 = [999, 999];
	}
	
	if(sectorNum == 1){
		if(slime1_1alive){
			slime1_1_xy = [480, 448];
		}
		if(slime1_2alive){
			slime1_2_xy = [192, 224];
		}
		if(slime1_3alive){
			slime1_3_xy = [384, 256];
		}
	}else {
		slime1_1_xy = [999, 999];
		slime1_2_xy = [999, 999];
		slime1_3_xy = [999, 999];
	}
	
	if(sectorNum == 2){
		if(goblin2_1alive){
			goblin2_1_xy = [384, 320];
		}
		if(goblin2_2alive){
			goblin2_2_xy = [288, 416];
		}
		if(goblin2_3alive){
			goblin2_3_xy = [480, 448];
		}
	}else {
		goblin2_1_xy = [999, 999];
		goblin2_2_xy = [999, 999];
		goblin2_3_xy = [999, 999];
	}
	
	if(sectorNum == 3){
		if(goblin3_1alive){
			goblin3_1_xy = [192, 352];
		}
		if(goblin3_2alive){
			goblin3_2_xy = [320, 416];
		}
		if(orc3_3alive){
			orc3_3_xy = [448, 288];
		}
	}else{
		goblin3_1_xy = [999, 999];
		goblin3_2_xy = [999, 999];
		orc3_3_xy = [999, 999];
	}
	
	if(sectorNum == 4){
		if(orc4_1alive){
			orc4_1_xy = [256, 416];
		}
		if(orc4_2alive){
			orc4_2_xy = [352, 320];
		}
		if(goblin4_3alive){
			goblin4_3_xy = [448, 448];
		}
	}else{
		orc4_1_xy = [999, 999];
		orc4_2_xy = [999, 999];
		goblin4_3_xy = [999, 999];
	}

	if(sectorNum == 5){
		if(slime2alive){
			slime_xy2 = [288, 352];
		}
		if(slime5_2alive){
			slime5_2_xy = [384, 256];
		}
		if(slime5_3alive){
			slime5_3_xy = [224, 192];
		}
	}else {
		slime_xy2 = [999, 999];
		slime5_2_xy = [999, 999];
		slime5_3_xy = [999, 999];
	}
	
	if(sectorNum == 6){
		if(goblin6_1alive){
			goblin6_1_xy = [160, 160];
		}
		if(goblin6_2alive){
			goblin6_2_xy = [160, 320];
		}
		if(goblin6_3alive){
			goblin6_3_xy = [352, 192];
		}
	}else {
		goblin6_1_xy = [999, 999];
		goblin6_2_xy = [999, 999];
		goblin6_3_xy = [999, 999];
	}
	
	if(sectorNum == 7){
		if(orc7_1alive){
			orc7_1_xy = [480, 288];
		}
		if(goblin7_2alive){
			goblin7_2_xy = [352, 352];
		}
		if(goblin7_3alive){
			goblin7_3_xy = [288, 384];
		}
	}else {
		orc7_1_xy = [999, 999];
		goblin7_2_xy = [999, 999];
		goblin7_3_xy = [999, 999];
	}
	
	if(sectorNum == 8){
		if(goblin8_1alive){
			goblin8_1_xy = [256, 288];
		}
		if(orc8_2alive){
			orc8_2_xy = [352, 448];
		}
	}else {
		goblin8_1_xy = [999, 999];
		orc8_2_xy = [999, 999];
	}
	
	if(sectorNum == 10){
		if(goblin10_1alive){
			goblin10_1_xy = [288, 352];
		}
		if(slime10_2alive){
			slime10_2_xy = [448, 128];
		}
		if(slime10_3alive){
			slime10_3_xy = [192, 288];
		}
	}else {
		goblin10_1_xy = [999, 999];
		slime10_2_xy = [999, 999];
		slime10_3_xy = [999, 999];
	}
	
	if(sectorNum == 11){
		if(slime11_1alive){
			slime11_1_xy = [192, 160];
		}
		if(goblin11_2alive){
			goblin11_2_xy = [288, 256];
		}
		if(goblin11_3alive){
			goblin11_3_xy = [352, 96];
		}
	}else {
		slime11_1_xy = [999, 999];
		goblin11_2_xy = [999, 999];
		goblin11_3_xy = [999, 999];
	}
	
	if(sectorNum == 12){
		if(goblin12_1alive){
			goblin12_1_xy = [320, 192];
		}
		if(orc12_2alive){
			orc12_2_xy = [448, 288];
		}
		if(orc12_3alive){
			orc12_3_xy = [224, 352];
		}
	}else {
		goblin12_1_xy = [999, 999];
		orc12_2_xy = [999, 999];
		orc12_3_xy = [999, 999];
	}
	
	if(sectorNum == 13){
		if(orcboss13_1alive){
			orcboss13_1_xy = [448,288];
		}
		if(orc13_2alive){
			orc13_2_xy = [352, 192];
		}
		if(orc13_3alive){
			orc13_3_xy = [352, 384];
		}
	}else {
		orcboss13_1_xy = [999, 999];
		orc13_2_xy = [999, 999];
		orc13_3_xy = [999, 999];
	}
}