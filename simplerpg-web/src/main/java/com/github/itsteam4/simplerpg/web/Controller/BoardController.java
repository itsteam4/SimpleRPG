package com.github.itsteam4.simplerpg.web.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.itsteam4.simplerpg.web.entity.Board;
import com.github.itsteam4.simplerpg.web.entity.BoardPaging;
import com.github.itsteam4.simplerpg.web.service.BoardDao;


@Controller
public class BoardController {
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private Board board;
	@Autowired
	private BoardPaging boardpaging;
	
	@Autowired
	static String find;

	@RequestMapping(value = "/boardpagelistform", method = RequestMethod.GET)
	public String boardInsertForm(HttpSession session, Model model, String find) {
		if (find == null) {
			find = "";
		}
		this.find = find;
		int pagesize = 5;
		int startrow = 0;
		int endrow = startrow + pagesize;
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		boardpaging.setFind(find);
		boardpaging.setStartrow(startrow);
		boardpaging.setEndrow(endrow);
		ArrayList<Board> boards = dao.pageList(boardpaging);
		int rowcount = dao.selectRowCount(find);
		int abspage = 1;
		if (rowcount % pagesize == 0) {
			abspage = 0;
		}
		int pagecount = rowcount / pagesize + abspage;
		int[] pages = new int[pagecount];
		for (int i = 0; i < pagecount; i++) {
			pages[i] = i + 1;
		}
		model.addAttribute("boards", boards);
		model.addAttribute("pages", pages);
		return "board/board_page_list";
	}
	
	@RequestMapping(value = "/boardinsertform", method = RequestMethod.GET)
	public String gameboardInsertForm(HttpSession session) {
		return "board/board_insert_form";
	}

	@RequestMapping(value = "/boardinsert", method = RequestMethod.POST)
	public String boardInsert(Model model, @ModelAttribute Board board,
			HttpServletRequest request) {
		
		board.setB_ip(request.getRemoteAddr());
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd E요일 a hh:mm:ss");
		board.setB_date(format.format(date));
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		try {
			
			int result = dao.insertRow(board);
			if (result > 0) {
				model.addAttribute("msg", "작성되었습니다");
			}
		} catch (Exception e) {
		}
		return "board/board_result";
	}

	@RequestMapping(value = "/boardpagelist", method = RequestMethod.GET)
	public String boardPageList(Model model, String find) {
		if (find == null) {
			find = "";
		}
		this.find = find;
		int pagesize = 5;
		int startrow = 0;
		int endrow = startrow + pagesize;
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		boardpaging.setFind(find);
		boardpaging.setStartrow(startrow);
		boardpaging.setEndrow(endrow);
		ArrayList<Board> boards = dao.pageList(boardpaging);
		int rowcount = dao.selectRowCount(find);
		int abspage = 1;
		if (rowcount % pagesize == 0) {
			abspage = 0;
		}
		int pagecount = rowcount / pagesize + abspage;
		int[] pages = new int[pagecount];
		for (int i = 0; i < pagecount; i++) {
			pages[i] = i + 1;
		}
		model.addAttribute("boards", boards);
		model.addAttribute("pages", pages);
		return "board/board_page_list";
	}

	@RequestMapping(value = "/boardpageselected", method = RequestMethod.GET)
	public String boardPageSelected(Model model, int page) {
		int pagesize = 10;
		int startrow = (page - 1) * (pagesize);
		int endrow = pagesize;
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		boardpaging.setFind(find);
		boardpaging.setStartrow(startrow);
		boardpaging.setEndrow(endrow);
		ArrayList<Board> boards = dao.pageList(boardpaging);
		int rowcount = dao.selectRowCount(find);
		int abspage = 1;
		if (rowcount % pagesize == 0) {
			abspage = 0;
		}
		int pagecount = rowcount / pagesize + abspage;
		int[] pages = new int[pagecount];
		for (int i = 0; i < pagecount; i++) {
			pages[i] = i + 1;
		}
		model.addAttribute("boards", boards);
		model.addAttribute("pages", pages);
		return "board/board_page_list";
	}

	@RequestMapping(value = "/boarddetail", method = RequestMethod.GET)
	public String boardDetail(Model model, HttpSession session, @RequestParam int b_seq) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		Board board = dao.selectOne(b_seq);
		if (!board.getB_id().equals(session.getAttribute("sessionid"))) {
			dao.updateHit(b_seq);
		} else {

		}
		model.addAttribute("board", board);
		return "board/board_detail";
	}

	@RequestMapping(value = "/boardUpdate", method = RequestMethod.POST)
	public String boardUpdate(Model model, @ModelAttribute Board board) {
		
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd E요일 a hh:mm:ss");
		board.setB_date(format.format(date));
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		try {
			int result = dao.updateRow(board);
			if (result > 0) {
				model.addAttribute("msg", "작성되었습니다");
			}
		} catch (Exception e) {
		}
		return "board/board_result";
	}

	@RequestMapping(value="boardDelete", method = RequestMethod.GET)
	public String boardDelete(@RequestParam int b_seq) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
			dao.deleteRowseq(b_seq);
		
		return "redirect:boardpagelist";
	}

}
