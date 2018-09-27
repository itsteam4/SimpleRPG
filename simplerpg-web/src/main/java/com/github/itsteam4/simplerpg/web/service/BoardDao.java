package com.github.itsteam4.simplerpg.web.service;

import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.entity.Board;
import com.github.itsteam4.simplerpg.web.entity.BoardPaging;

public interface BoardDao {
	int insertRow(Board board);
	int insertReplyRow(Board board);
	int selectRowCount(String find);
	ArrayList<Board> pageList(BoardPaging boardpaging);
	Board selectOne(int b_seq);
	void updateHit(int b_seq);
	int updateRow(Board board);
	int deleteseq(int b_seq);
	int deleteref(int b_ref);
}
