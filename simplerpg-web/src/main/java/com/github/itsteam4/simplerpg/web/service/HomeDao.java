package com.github.itsteam4.simplerpg.web.service;

import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.entity.Board;
import com.github.itsteam4.simplerpg.web.entity.FreeBoard;
import com.github.itsteam4.simplerpg.web.entity.FreeBoardPaging;

public interface HomeDao {

	ArrayList<Board> noticeList();
	ArrayList<FreeBoard> freeboardList();
}
