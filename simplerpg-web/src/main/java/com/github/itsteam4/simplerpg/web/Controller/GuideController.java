package com.github.itsteam4.simplerpg.web.Controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GuideController {
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/gameguideform", method = RequestMethod.GET)
	public String gameguideform() {
		return "guide/game_guide";
	}

	@RequestMapping(value = "/itemguideform", method = RequestMethod.GET)
	public String schedule() {
		return "guide/item_guide";
	}
	
	
	@RequestMapping(value = "/monsterguideform", method = RequestMethod.GET)
	public String monsterguideform() {
		return "guide/monster_guide";
	}

}