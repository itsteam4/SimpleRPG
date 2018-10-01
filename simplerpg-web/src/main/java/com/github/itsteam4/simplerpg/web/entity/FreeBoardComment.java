package com.github.itsteam4.simplerpg.web.entity;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class FreeBoardComment {
	private int fc_cno;
	private int fc_bno;
	private int fc_content;
	private int fc_writer;
	private String fc_contnet;
	private Date fc_date;
	
	public int getFc_cno() {
		return fc_cno;
	}
	public void setFc_cno(int fc_cno) {
		this.fc_cno = fc_cno;
	}
	public int getFc_bno() {
		return fc_bno;
	}
	public void setFc_bno(int fc_bno) {
		this.fc_bno = fc_bno;
	}
	public int getFc_content() {
		return fc_content;
	}
	public void setFc_content(int fc_content) {
		this.fc_content = fc_content;
	}
	public int getFc_writer() {
		return fc_writer;
	}
	public void setFc_writer(int fc_writer) {
		this.fc_writer = fc_writer;
	}
	public String getFc_contnet() {
		return fc_contnet;
	}
	public void setFc_contnet(String fc_contnet) {
		this.fc_contnet = fc_contnet;
	}
	public Date getFc_date() {
		return fc_date;
	}
	public void setFc_date(Date fc_date) {
		this.fc_date = fc_date;
	}
	
	
	
}
