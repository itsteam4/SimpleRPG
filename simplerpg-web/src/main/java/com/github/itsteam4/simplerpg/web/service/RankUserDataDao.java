package com.github.itsteam4.simplerpg.web.service;

import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.client.entity.UserData;
import com.github.itsteam4.simplerpg.web.entity.RankNumber;

public interface RankUserDataDao {
	UserData userDataLoding(String id);
	ArrayList<UserData> selectuserAll(String id);
	int selectrankCount(String id);
	ArrayList<UserData> pageList(RankNumber ranknumber);
	UserData selectOne(String id);
	ArrayList<UserData> rankList(UserData userdata);
	ArrayList<UserData> homerankList();
	
	
}
