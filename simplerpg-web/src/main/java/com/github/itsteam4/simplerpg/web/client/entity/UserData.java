package com.github.itsteam4.simplerpg.web.client.entity;

import org.springframework.stereotype.Component;

@Component
public class UserData {
	String id;		//����
	int usersector;		//���� ���� v
	int userposX;		//���� ��ġx
	int userposY;		//���� ��ġy
	int itemA;		//�������� ������ +10 v
	int itemD;		//������ ������ +10 v
	int userex;		//100���� ����� ���� �ݿ� v
	int userlv;		//������ �������� ���� ���ʽ� ex 1 = ���� 1+ v
	int userkill;		//���� ������ +10 v
	int userdead;		//���� ������ -5 v
	int userscore;		//���� ���� v
	String rank;
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
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	
}
