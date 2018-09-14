package com.github.itsteam4.simplerpg.web.service;

import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.entity.Helpdesk;
import com.github.itsteam4.simplerpg.web.entity.HelpdeskPaging;

public interface HelpdeskDao  {
	int insertRow(Helpdesk helpdesk);
	int insertReplyRow(Helpdesk helpdesk);
	int selectRowCount(String find);
	ArrayList<Helpdesk> pageList(HelpdeskPaging helpdeskpaging);
	Helpdesk selectOne(int h_seq);
	void updateHit(int h_seq);
	int updateRow(Helpdesk helpdesk);
	void deleteRowseq(int h_seq);
	void deleteRowref(int h_ref);
}
