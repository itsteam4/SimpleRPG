package com.github.itsteam4.simplerpg.web.service;

import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.entity.FreeBoard;
import com.github.itsteam4.simplerpg.web.entity.FreeBoardPaging;

public interface FreeBoardDAO {
	int freeinsertrow(FreeBoard fboard);
	FreeBoard freeboardselectone(int f_no);
	ArrayList<FreeBoard> freeboardpagelist(FreeBoardPaging fboardpaging);
	int fselectrowcount(String find);
	int fupdaterow(FreeBoard fboard);
	void fdeleterow(int f_no);
	void fupdatehit(int f_no);
	ArrayList<FreeBoard> freeboardList();
}
