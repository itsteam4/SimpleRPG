package com.github.itsteam4.simplerpg.web.Controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

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

import com.github.itsteam4.simplerpg.web.entity.FreeBoard;
import com.github.itsteam4.simplerpg.web.entity.Member;
import com.github.itsteam4.simplerpg.web.entity.RankInfo;
import com.github.itsteam4.simplerpg.web.entity.RankTest;
import com.github.itsteam4.simplerpg.web.entity.RankVisitbook;
import com.github.itsteam4.simplerpg.web.entity.RankVisitbookNumber;
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
	private RankVisitbook rankvisitbook;
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
	
	@RequestMapping(value = "/rankform", method = RequestMethod.GET)
	public String rankform() {
		return "rank/rank_form";
	}
	@RequestMapping(value = "/insertGreeting", method = RequestMethod.POST)
	@ResponseBody
	public String insertGreeting(@ModelAttribute RankInfo rankinfo) {
		RankInfoDao dao = sqlSession.getMapper(RankInfoDao.class);
		System.out.println("id값"+rankinfo.getId());
		System.out.println("인사값2"+rankinfo.getGreeting());
		dao.insertRow(rankinfo);
		return "";
	}
	@RequestMapping(value = "/updateGreeting", method = RequestMethod.POST)
	@ResponseBody
	public String updateGreeting(@ModelAttribute RankInfo rankinfo) {
		RankInfoDao dao = sqlSession.getMapper(RankInfoDao.class);
		System.out.println("인사값2"+rankinfo.getGreeting());
		dao.updateRow(rankinfo);
		return "";
	}
	
	
	@RequestMapping(value = "/dbinserform", method = RequestMethod.GET)
	public String dbinserform(Model model, @ModelAttribute Member member,@RequestParam String id) {
		MemberDAO mdao = sqlSession.getMapper(MemberDAO.class);
		RankTestDao dao = sqlSession.getMapper(RankTestDao.class);
		
		ArrayList<Member> members = dao.selectAll();
		
		model.addAttribute("members",members);
		
		return "rank/dbinsert_form";
	}
	
	
	@RequestMapping(value = "/rankinfoform", method = RequestMethod.GET)
	public String rankinfoform(Model model,@RequestParam String id,@ModelAttribute Member member,
			@ModelAttribute RankVisitbook rankvisitbook,@ModelAttribute RankVisitbookNumber rankvisitbooknumber) {
		RankInfoDao dao = sqlSession.getMapper(RankInfoDao.class);
		MemberDAO mdao = sqlSession.getMapper(MemberDAO.class);
		
		RankInfo rankinfos = dao.selectOne(id);
		Member members = mdao.selectOne(id);
		ArrayList<RankVisitbook> rankvisitbooks = dao.selectAll(id);
		
		int number = (int) rankvisitbooks.size();
		rankvisitbooknumber.setNumber(number);
		
		model.addAttribute("rankinfos",rankinfos);
		model.addAttribute("members",members);
		model.addAttribute("rankvisitbooks",rankvisitbooks);
		model.addAttribute("rankvisitbooknumber",rankvisitbooknumber);
		
		return "rank/rankinfo_form";
	}
	
	@RequestMapping(value = "/visitBook", method = RequestMethod.POST)
	@ResponseBody
	public String visitBook(Model model,@ModelAttribute RankVisitbook rankvisitbook) {
		RankInfoDao dao = sqlSession.getMapper(RankInfoDao.class);
		
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		rankvisitbook.setDate(format.format(date));
		
		dao.insertVisitRow(rankvisitbook);
		
		return "";
	}
	
	@RequestMapping(value = "/rankTest", method = RequestMethod.GET)
	public String rankTest(Model model,@RequestParam String id,@ModelAttribute Member member,
			@ModelAttribute RankVisitbook rankvisitbook,@ModelAttribute RankVisitbookNumber rankvisitbooknumber ) {
		MemberDAO mdao = sqlSession.getMapper(MemberDAO.class);
		RankTestDao dao = sqlSession.getMapper(RankTestDao.class);
		RankInfoDao idao = sqlSession.getMapper(RankInfoDao.class);
		
		Member members = mdao.selectOne(id);
		ArrayList<RankVisitbook> rankvisitbooks = idao.selectAll(id); 
		
		int number = (int) rankvisitbooks.size();
		rankvisitbooknumber.setNumber(number);
		
		
		model.addAttribute("members",members);
		model.addAttribute("rankvisitbooks",rankvisitbooks);
		model.addAttribute("rankvisitbooknumber",rankvisitbooknumber);
		
		return "rank/rankinfo_form";
	}
	
	
	
	
	
	@RequestMapping(value = "/visitBookSearch", method = RequestMethod.POST)
	@ResponseBody
	public String visitBookSearch(Model model,@ModelAttribute RankVisitbook rankvisitbook) {
		RankInfoDao dao = sqlSession.getMapper(RankInfoDao.class);
		
		
		return "";
	}
	

}
