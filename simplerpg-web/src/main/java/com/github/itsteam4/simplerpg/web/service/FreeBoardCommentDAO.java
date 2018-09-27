package com.github.itsteam4.simplerpg.web.service;

import java.util.List;

public interface FreeBoardCommentDAO {
//	댓글 개수
	int commentcount();
//	댓글 목록
	List<FreeBoardCommentDAO> commentlist();
//	댓글 작성
	int commentinsert(FreeBoardCommentDAO comment);
//	댓글 수정
	int commentupdate(FreeBoardDAO comment);
//	댓글 삭제
	int commentdelete(int f_cno);
}
