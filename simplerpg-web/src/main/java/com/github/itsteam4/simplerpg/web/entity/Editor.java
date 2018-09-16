package com.github.itsteam4.simplerpg.web.entity;

import org.springframework.web.multipart.MultipartFile;

public class Editor {
	private MultipartFile Filedata;
	//callback URL
    private String callback;
    //콜백함수??
    private String callback_func;



	public String getCallback() {
		return callback;
	}

	public void setCallback(String callback) {
		this.callback = callback;
	}

	public String getCallback_func() {
		return callback_func;
	}

	public void setCallback_func(String callback_func) {
		this.callback_func = callback_func;
	}

	public MultipartFile getFiledata() {
		return Filedata;
	}

	public void setFiledata(MultipartFile filedata) {
		Filedata = filedata;
	}
	
	
}
