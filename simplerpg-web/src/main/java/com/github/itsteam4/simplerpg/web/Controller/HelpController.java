package com.github.itsteam4.simplerpg.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelpController {
	@RequestMapping(value = "/helpquestion", method = RequestMethod.GET)
	public String helpquestion() {
		return "help/help_question";
	}
	
	@RequestMapping(value = "/helpinquiry", method = RequestMethod.GET)
	public String helpinquiry() {
		return "help/help_inquiry";
	}
	
	@RequestMapping(value = "/helpsecurity", method = RequestMethod.GET)
	public String helpsecurity() {
		return "help/help_question";
	}
	
	
}
