package com.github.itsteam4.simplerpg.web.service;

import com.github.itsteam4.simplerpg.web.entity.RankInfo;

public interface RankInfoDao {
	int updateRow(RankInfo rankinfo);
	int insertRow(RankInfo rankinfo);
	RankInfo selectOne(String id);
}
