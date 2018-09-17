package com.github.itsteam4.simplerpg.web.entity;

import org.springframework.stereotype.Component;

@Component
public class FreeBoardPaging {
	private String f_find;
	private int f_startrow;
	private int f_endrow;
	
	public String getF_find() {
		return f_find;
	}
	public void setF_find(String f_find) {
		this.f_find = f_find;
	}
	public int getF_startrow() {
		return f_startrow;
	}
	public void setF_startrow(int f_startrow) {
		this.f_startrow = f_startrow;
	}
	public int getF_endrow() {
		return f_endrow;
	}
	public void setF_endrow(int f_endrow) {
		this.f_endrow = f_endrow;
	}
	
}
