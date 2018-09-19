package com.github.itsteam4.simplerpg.web.Controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.itsteam4.simplerpg.web.entity.FreeBoard;
import com.github.itsteam4.simplerpg.web.service.FreeBoardDAO;

@Controller
public class HelpController {

	@Autowired
	SqlSession sqlSession;
	@Autowired
	FreeBoard fboard;

	@RequestMapping(value = "/helpquestion", method = RequestMethod.GET)
	public String helpquestion() {
		return "help/help_question";
	}

	@RequestMapping(value = "/helpinquiryform", method = RequestMethod.GET)
	public String helpinquiryform() {
		return "help/help_inquiry";
	}

	@RequestMapping(value = "/helpinquiry", method = RequestMethod.GET)
	public String helpinquiry(Model model, @ModelAttribute FreeBoard fboards) {
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		int result = dao.freeinsertrow(fboards);
		if (result > 0) {
			System.out.println("저장되었습니다: " + result);
		} else {
			System.out.println("저장 실패했습니다.");
		}
		model.addAttribute("fboards", fboards);
		return "redirect:helpinquiryform";
	}

	@RequestMapping(value = "/helpsecurity", method = RequestMethod.GET)
	public String helpsecurity() {
		return "help/help_question";
	}

}
