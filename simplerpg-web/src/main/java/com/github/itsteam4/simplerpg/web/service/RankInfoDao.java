package com.github.itsteam4.simplerpg.web.service;


import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.client.entity.UserData;
import com.github.itsteam4.simplerpg.web.entity.Rank;
import com.github.itsteam4.simplerpg.web.entity.RankInfo;
import com.github.itsteam4.simplerpg.web.entity.RankVisitbook;
import com.github.itsteam4.simplerpg.web.entity.RankVisitbookNumber;

public interface RankInfoDao {
	void updateRow(RankInfo rankinfo);
	int insertRow(RankInfo rankinfo);
	int insertVisitRow(RankVisitbook rankvisitbook);
	RankInfo selectOne(String id);
	RankVisitbook selectRow(String id);
	ArrayList<RankVisitbook> selectAll(String id);
	void deleteRow(int seq);
	ArrayList<RankVisitbook> pageList(RankVisitbookNumber rankvisitbooknumber);
	int selectRowCount(String id);
	
}
