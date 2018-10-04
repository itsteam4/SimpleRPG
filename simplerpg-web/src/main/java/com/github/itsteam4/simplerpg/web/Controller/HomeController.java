package com.github.itsteam4.simplerpg.web.Controller;

import java.util.ArrayList;
import java.util.Locale;


import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.itsteam4.simplerpg.web.client.entity.UserData;
import com.github.itsteam4.simplerpg.web.entity.Board;
import com.github.itsteam4.simplerpg.web.entity.BoardPaging;
import com.github.itsteam4.simplerpg.web.entity.FreeBoard;
import com.github.itsteam4.simplerpg.web.service.FreeBoardDAO;
import com.github.itsteam4.simplerpg.web.service.HomeDao;
import com.github.itsteam4.simplerpg.web.service.RankUserDataDao;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	SqlSession session;
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private Board board;
	@Autowired
	private BoardPaging boardpaging;
	@Autowired
	FreeBoard freeboard;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "IndexForm", method = RequestMethod.GET)
	public String home(Model model, @ModelAttribute Board board,@ModelAttribute FreeBoard freeboard) {
		HomeDao hdao = sqlSession.getMapper(HomeDao.class);
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		RankUserDataDao rudao = sqlSession.getMapper(RankUserDataDao.class);
		
		ArrayList<Board> boards = hdao.noticeList();
		ArrayList<FreeBoard> frees = dao.freeboardList();
		ArrayList<UserData> ranklist = rudao.homerankList();
		
		System.out.println("home"+board.getB_title());
		System.out.println("hosize"+boards.size());
		String abdc = board.getB_date();
		System.out.println("date"+abdc);
		model.addAttribute("boards", boards);
		model.addAttribute("frees", frees);
		model.addAttribute("ranklist", ranklist);
		return "home";
	}
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String LogoPage() {
		
		return "redirect:IndexForm";
	}
	
	@RequestMapping(value = "noticeGo", method = RequestMethod.GET)
	public String noticeGo() {
		
		
		return "home";
	}
}
