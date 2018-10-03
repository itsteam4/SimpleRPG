package com.github.itsteam4.simplerpg.web.Controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GameYoutubeController {
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/youtube", method = RequestMethod.GET)
	public String trailer() {

		return "gameyoutube/youtube";
	}

}
