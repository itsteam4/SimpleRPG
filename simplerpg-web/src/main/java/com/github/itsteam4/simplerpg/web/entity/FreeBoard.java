package com.github.itsteam4.simplerpg.web.entity;

import org.springframework.stereotype.Component;

@Component
public class FreeBoard {
	private int f_no;
	private String f_title;
	private String f_writer;
	private String f_content;
	private String f_date;
	private int f_hit;
	private int f_ref;
	private int f_recnt;
	
	
	public int getF_ref() {
		return f_ref;
	}
	public void setF_ref(int f_ref) {
		this.f_ref = f_ref;
	}
	public int getF_recnt() {
		return f_recnt;
	}
	public void setF_recnt(int f_recnt) {
		this.f_recnt = f_recnt;
	}
	public int getF_hit() {
		return f_hit;
	}
	public void setF_hit(int f_hit) {
		this.f_hit = f_hit;
	}
	public int getF_no() {
		return f_no;
	}
	public void setF_no(int f_no) {
		this.f_no = f_no;
	}
	public String getF_title() {
		return f_title;
	}
	public void setF_title(String f_title) {
		this.f_title = f_title;
	}
	public String getF_writer() {
		return f_writer;
	}
	public void setF_writer(String f_writer) {
		this.f_writer = f_writer;
	}
	public String getF_content() {
		return f_content;
	}
	public void setF_content(String f_content) {
		this.f_content = f_content;
	}
	public String getF_date() {
		return f_date;
	}
	public void setF_date(String f_date) {
		this.f_date = f_date;
	}
}
