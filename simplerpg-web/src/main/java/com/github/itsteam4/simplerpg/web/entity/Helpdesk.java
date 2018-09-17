package com.github.itsteam4.simplerpg.web.entity;

import org.springframework.stereotype.Component;

@Component
public class Helpdesk {
	private int h_seq;
	private String h_email;
	private String h_name;
	private String h_password;
	private String h_title;
	private String h_content;
	private String h_ip;
	private int h_ref;
	private int h_step;
	private int h_hit;
	private int h_level;
	private String h_attach;
	private String h_beforeattach;
	private String h_date;

	public int getB_seq() {
		return h_seq;
	}

	public void setB_seq(int h_seq) {
		this.h_seq = h_seq;
	}

	public String getB_email() {
		return h_email;
	}

	public void setB_email(String h_email) {
		this.h_email = h_email;
	}

	public String getB_name() {
		return h_name;
	}

	public void setB_name(String h_name) {
		this.h_name = h_name;
	}

	public String getB_password() {
		return h_password;
	}

	public void setB_password(String h_password) {
		this.h_password = h_password;
	}

	public String getB_title() {
		return h_title;
	}

	public void setB_title(String h_title) {
		this.h_title = h_title;
	}

	public String getB_content() {
		return h_content;
	}

	public void setB_content(String h_content) {
		this.h_content = h_content;
	}

	public String getB_ip() {
		return h_ip;
	}

	public void setB_ip(String h_ip) {
		this.h_ip = h_ip;
	}

	public int getB_ref() {
		return h_ref;
	}

	public void setB_ref(int h_ref) {
		this.h_ref = h_ref;
	}

	public int getB_step() {
		return h_step;
	}

	public void setB_step(int h_step) {
		this.h_step = h_step;
	}

	public int getB_hit() {
		return h_hit;
	}

	public void setB_hit(int h_hit) {
		this.h_hit = h_hit;
	}

	public int getB_level() {
		return h_level;
	}

	public void setB_level(int h_level) {
		this.h_level = h_level;
	}

	public String getB_attach() {
		return h_attach;
	}

	public void setB_attach(String h_attach) {
		this.h_attach = h_attach;
	}

	public String getB_beforeattach() {
		return h_beforeattach;
	}

	public void setB_beforeattach(String h_beforeattach) {
		this.h_beforeattach = h_beforeattach;
	}

	public String getB_date() {
		return h_date;
	}

	public void setB_date(String h_date) {
		this.h_date = h_date;
	}
}
