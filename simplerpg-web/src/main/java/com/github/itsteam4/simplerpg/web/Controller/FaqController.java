package com.github.itsteam4.simplerpg.web.Controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FaqController {
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/faqForm", method = RequestMethod.GET)
	public String faqForm() {
		return "faq/faq";
	}

	

}