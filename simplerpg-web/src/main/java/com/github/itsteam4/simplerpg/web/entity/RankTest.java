package com.github.itsteam4.simplerpg.web.entity;

import org.springframework.stereotype.Component;

@Component
public class RankTest {
	private int number;
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getStr1() {
		return str1;
	}
	public void setStr1(String str1) {
		this.str1 = str1;
	}
	public String getStr2() {
		return str2;
	}
	public void setStr2(String str2) {
		this.str2 = str2;
	}
	private String str1;
	private String str2;
}
