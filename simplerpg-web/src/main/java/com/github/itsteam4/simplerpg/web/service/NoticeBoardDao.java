package com.github.itsteam4.simplerpg.web.service;

import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.entity.NoticeBoard;
import com.github.itsteam4.simplerpg.web.entity.NoticeBoardPaging;

public interface NoticeBoardDao {
	 int insertRow(NoticeBoard noticeboard);

	   int insertReplyRow(NoticeBoard noticeboard);

	   int selectRowCount(String find);

	   ArrayList<NoticeBoard> pageList(NoticeBoardPaging noticeboardpaging);

	   NoticeBoard selectOne(int n_seq);

	   void updateHit(int n_seq);

	   int updateRow(NoticeBoard noticeboard);

	   int deleteseq(int n_seq);

	   int deleteref(int n_ref);
	}