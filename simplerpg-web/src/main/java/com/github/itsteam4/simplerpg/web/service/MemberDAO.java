package com.github.itsteam4.simplerpg.web.service;

import com.github.itsteam4.simplerpg.web.entity.Member;

public interface MemberDAO {
	int MemberInsertRow(Member member);
	int ConfirmCheck(String id);
	Member selectOne(String id);
	Member login(String id);
	int memberUpdateRow(Member member);
}
