package com.github.itsteam4.simplerpg.web.client.entity;

import org.springframework.stereotype.Component;

@Component
public class UserData {
	String id;		//계정
	int usersector;		//유저 섹터 v
	int userposX;		//유저 위치x
	int userposY;		//유저 위치y
	int itemA;		//무기종합 점수에 +10 v
	int itemD;		//방어구종합 점수에 +10 v
	int userex;		//100으로 나누어서 레벨 반영 v
	int userlv;		//레벨이 높을수록 스텟 보너스 ex 1 = 각각 1+ v
	int userkill;		//종합 점수에 +10 v
	int userdead;		//종합 점수에 -5 v
	int userscore;		//종합 점수 v
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getUsersector() {
		return usersector;
	}
	public void setUsersector(int usersector) {
		this.usersector = usersector;
	}
	public int getUserposX() {
		return userposX;
	}
	public void setUserposX(int userposX) {
		this.userposX = userposX;
	}
	public int getUserposY() {
		return userposY;
	}
	public void setUserposY(int userposY) {
		this.userposY = userposY;
	}
	public int getItemA() {
		return itemA;
	}
	public void setItemA(int itemA) {
		this.itemA = itemA;
	}
	public int getItemD() {
		return itemD;
	}
	public void setItemD(int itemD) {
		this.itemD = itemD;
	}
	public int getUserex() {
		return userex;
	}
	public void setUserex(int userex) {
		this.userex = userex;
	}
	public int getUserlv() {
		return userlv;
	}
	public void setUserlv(int userlv) {
		this.userlv = userlv;
	}
	public int getUserkill() {
		return userkill;
	}
	public void setUserkill(int userkill) {
		this.userkill = userkill;
	}
	public int getUserdead() {
		return userdead;
	}
	public void setUserdead(int userdead) {
		this.userdead = userdead;
	}
	public int getUserscore() {
		return userscore;
	}
	public void setUserscore(int userscore) {
		this.userscore = userscore;
	}
	
}
