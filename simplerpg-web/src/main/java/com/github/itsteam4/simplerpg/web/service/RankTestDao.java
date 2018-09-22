package com.github.itsteam4.simplerpg.web.service;

import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.entity.Member;
import com.github.itsteam4.simplerpg.web.entity.RankTest;

public interface RankTestDao {
	int insertRow(RankTest ranktest);
	ArrayList<Member> selectAll();

}
