package com.github.itsteam4.simplerpg.web.service;

import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.entity.FreeBoard;

public interface FreeBoardDAO {
	int freeinsertrow(FreeBoard fboard);
	FreeBoard freeboardselectone(int f_no);
	ArrayList<FreeBoard> freeboardpagelist();
	
}
