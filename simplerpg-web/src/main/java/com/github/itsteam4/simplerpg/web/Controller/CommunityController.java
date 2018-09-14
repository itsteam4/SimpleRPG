package com.github.itsteam4.simplerpg.web.Controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.itsteam4.simplerpg.web.entity.Member;
import com.github.itsteam4.simplerpg.web.service.MemberDAO;

@Controller
public class CommunityController {
	@Autowired
	SqlSession sqlSession;
	
//	스크린샷 게시판 이동
	@RequestMapping(value="ScreenFreeBoardForm",method=RequestMethod.GET)
	public String ScreenBoardForm() {
		System.out.println("테스트 입니다");
		return "Community/screenshot_board_form";
	}
	
	
//	동영상 게시판 이동
	@RequestMapping(value="MediaFreeBoardForm",method=RequestMethod.GET)
	public String MediaBoardForm() {
		
		return "Community/media_board_form";
	}
//	자유게시판 이동
	@RequestMapping(value="FreeBoardForm",method=RequestMethod.GET)
	public String FreeBoardForm(Model model) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		
		return "Community/free_board_form";
	}
//	팁/노하우 게시판 이동
	@RequestMapping(value="TipKnowBoardForm",method=RequestMethod.GET)
	public String TipKnowBoardForm() {
		return "Community/tip_know_how_board_form";
	}
	
//	자유게시판 기능 구현
	
//	글쓰기 창 이동
	@RequestMapping(value="FreeBoardInsertForm",method=RequestMethod.GET)
	public String FreeBoardInsertForm() {
		return "Community/free_board_insert_form";
	}
	
}
