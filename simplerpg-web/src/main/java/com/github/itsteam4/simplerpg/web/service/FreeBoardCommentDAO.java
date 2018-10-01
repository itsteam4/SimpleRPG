package com.github.itsteam4.simplerpg.web.service;

import java.util.ArrayList;

import com.github.itsteam4.simplerpg.web.entity.FreeBoardComment;

public interface FreeBoardCommentDAO {
//	댓글 개수
	int commentcount();
//	댓글 목록
	ArrayList<FreeBoardCommentDAO> commentlist();
//	댓글 작성
	int commentinsert(FreeBoardComment comment);
//	댓글 수정
	int commentupdate(FreeBoardDAO comment);
//	댓글 삭제
	int commentdelete(int f_cno);
}
