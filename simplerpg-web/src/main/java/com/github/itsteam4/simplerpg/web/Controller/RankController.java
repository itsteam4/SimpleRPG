package com.github.itsteam4.simplerpg.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RankController {
	
	@RequestMapping(value = "/dbinserform", method = RequestMethod.GET)
	public String dbinserform() {
		return "rank/dbinsert_form";
	}
	
	@RequestMapping(value = "/rankform", method = RequestMethod.GET)
	public String rankform() {
		return "rank/rank_form";
	}
	
	@RequestMapping(value = "/rankinfoform", method = RequestMethod.GET)
	public String rankinfoform() {
		return "rank/rankinfo_form";
	}

}
