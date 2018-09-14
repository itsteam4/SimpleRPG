package com.github.itsteam4.simplerpg.web.client.service;

import com.github.itsteam4.simplerpg.web.client.entity.UserData;

public interface UserDataDao {
	int searchID(String testuser);
	void insertUser(String testuser);
	void userUpdate(UserData UserData);
	UserData userDataLoding(String id);
}
