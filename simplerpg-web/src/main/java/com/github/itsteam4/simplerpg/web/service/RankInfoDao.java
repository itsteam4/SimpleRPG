package com.github.itsteam4.simplerpg.web.service;

import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.entity.RankInfo;

public interface RankInfoDao {
	void updateRow(RankInfo rankinfo);
	int insertRow(RankInfo rankinfo);
	RankInfo selectOne(String id);
}
