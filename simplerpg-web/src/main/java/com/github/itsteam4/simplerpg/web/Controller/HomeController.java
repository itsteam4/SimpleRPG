package com.github.itsteam4.simplerpg.web.Controller;

import java.util.ArrayList;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.itsteam4.simplerpg.web.service.TestDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	SqlSession session;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "IndexForm", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		TestDAO dao = session.getMapper(TestDAO.class);
		ArrayList<String> name = dao.selectAll();
		
		model.addAttribute("names",name);
		return "home";
	}
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String LogoPage() {
		
		return "redirect:IndexForm";
	}
	
	
}
