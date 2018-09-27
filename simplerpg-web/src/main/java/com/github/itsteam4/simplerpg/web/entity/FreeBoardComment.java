package com.github.itsteam4.simplerpg.web.entity;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class FreeBoardComment {
	private int f_cno;
	private int f_bno;
	private int f_content;
	private int f_writer;
	private String f_contnet;
	private Date f_date;
	
	
	public Date getF_date() {
		return f_date;
	}
	public void setF_date(Date f_date) {
		this.f_date = f_date;
	}
	public int getF_cno() {
		return f_cno;
	}
	public void setF_cno(int f_cno) {
		this.f_cno = f_cno;
	}
	public int getF_bno() {
		return f_bno;
	}
	public void setF_bno(int f_bno) {
		this.f_bno = f_bno;
	}
	public int getF_content() {
		return f_content;
	}
	public void setF_content(int f_content) {
		this.f_content = f_content;
	}
	public int getF_writer() {
		return f_writer;
	}
	public void setF_writer(int f_writer) {
		this.f_writer = f_writer;
	}
	public String getF_contnet() {
		return f_contnet;
	}
	public void setF_contnet(String f_contnet) {
		this.f_contnet = f_contnet;
	}
}
