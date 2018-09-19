package com.github.itsteam4.simplerpg.web.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.itsteam4.simplerpg.web.entity.Member;
import com.github.itsteam4.simplerpg.web.entity.RankInfo;
import com.github.itsteam4.simplerpg.web.entity.RankTest;
import com.github.itsteam4.simplerpg.web.service.RankTestDao;
import com.github.itsteam4.simplerpg.web.service.MemberDAO;
import com.github.itsteam4.simplerpg.web.service.RankInfoDao;

@Controller
public class RankController {
	
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private RankTest ranktest;
	@Autowired
	private RankInfo rankinfo;
	@Autowired
	Member member;
	
	@RequestMapping(value = "/ranktestInsert", method = RequestMethod.POST)
	public String ranktestInsert(Model model,@ModelAttribute RankTest ranktest) {
		RankTestDao dao = sqlSession.getMapper(RankTestDao.class);
		int result=dao.insertRow(ranktest);
		String aaa="";
		if(result > 0)
			aaa="저장되었습니다.";
		else
			aaa="저장 실패입니다.";
		
		model.addAttribute("aaa",aaa); 
		model.addAttribute("ranktest",ranktest);
		return "rank/result";
	}
	
	@RequestMapping(value = "/dbinserform", method = RequestMethod.GET)
	public String dbinserform() {
		return "rank/dbinsert_form";
	}
	
	@RequestMapping(value = "/rankform", method = RequestMethod.GET)
	public String rankform() {
		return "rank/rank_form";
	}
	
	@RequestMapping(value = "/rankinfoform", method = RequestMethod.GET)
	public String rankinfoform(Model model,@RequestParam String id,@ModelAttribute Member member) {
		RankInfoDao dao = sqlSession.getMapper(RankInfoDao.class);
		MemberDAO mdao = sqlSession.getMapper(MemberDAO.class);
		
		RankInfo rankinfos = dao.selectOne(id);
		Member members = mdao.selectOne(id);
		
		
		model.addAttribute("rankinfos",rankinfos);
		model.addAttribute("members",members);
		return "rank/rankinfo_form";
	}
	
	
	
	@RequestMapping(value = "/insertGreeting", method = RequestMethod.POST)
	@ResponseBody
	public String insertGreeting(Model model,@ModelAttribute RankInfo rankinfo) {
		RankInfoDao dao = sqlSession.getMapper(RankInfoDao.class);
		System.out.println("id값"+rankinfo.getId());
		System.out.println("인사값2"+rankinfo.getGreeting());
		dao.insertRow(rankinfo);
		
		return "";
	}
	
	
	@RequestMapping(value = "/updateGreeting", method = RequestMethod.POST)
	@ResponseBody
	public String updateGreeting(Model model,@ModelAttribute RankInfo rankinfo) {
		RankInfoDao dao = sqlSession.getMapper(RankInfoDao.class);
		System.out.println("인사값2"+rankinfo.getGreeting());
		dao.updateRow(rankinfo);
		
		return "";
	}
	
	
	

}
