package com.github.itsteam4.simplerpg.web.service;

import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.client.entity.UserData;

public interface RankUserDataDao {
	UserData userDataLoding(String id);
	ArrayList<UserData> selectuserAll(String id);
}
