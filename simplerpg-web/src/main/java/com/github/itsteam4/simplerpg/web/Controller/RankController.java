package com.github.itsteam4.simplerpg.web.Controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.itsteam4.simplerpg.web.entity.RankInfo;
import com.github.itsteam4.simplerpg.web.entity.RankTest;
import com.github.itsteam4.simplerpg.web.service.RankTestDao;
import com.github.itsteam4.simplerpg.web.service.RankInfoDao;

@Controller
public class RankController {
	
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private RankTest ranktest;
	@Autowired
	private RankInfo rankinfo;
	
	@RequestMapping(value = "/dbinserform", method = RequestMethod.GET)
	public String dbinserform() {
		return "rank/dbinsert_form";
	}
	
	@RequestMapping(value = "/rankform", method = RequestMethod.GET)
	public String rankform() {
		return "rank/rank_form";
	}
	
	@RequestMapping(value = "/rankinfoform", method = RequestMethod.GET)
	public String rankinfoform(Model model,@ModelAttribute RankInfo rankinfo) {
		RankInfoDao dao = sqlSession.getMapper(RankInfoDao.class);
		
		System.out.println("greeting---------"+rankinfo.getGreeting());
		System.out.println("ididid---------"+rankinfo.getId());
		
		model.addAttribute("rankinfo",rankinfo);
		
		return "rank/rankinfo_form";
	}
	
	
	
	@RequestMapping(value = "/ranktestInsert", method = RequestMethod.POST)
	public String ranktestInsert(Model model,@ModelAttribute RankTest ranktest) {
		RankTestDao dao = sqlSession.getMapper(RankTestDao.class);
		int result=dao.insertRow(ranktest);
		String aaa="";
		if(result > 0)
			aaa="저장되었습니다.";
		else
			aaa="저장 실패입니다.";
		
		System.out.println("image"+ranktest.getStr2());
		
		
		model.addAttribute("aaa",aaa); 
		model.addAttribute("ranktest",ranktest);
		return "rank/result";
	}
	
	@RequestMapping(value = "/rankinfoGreeting", method = RequestMethod.POST)
	public String rankinfoGreeting(Model model,@ModelAttribute RankInfo rankinfo,@RequestParam String id) {
		RankInfoDao dao = sqlSession.getMapper(RankInfoDao.class);
		
		dao.updateRow(rankinfo);
		RankInfo rankinfo_search = dao.selectOne(id);
		
		
		System.out.println("update---------"+rankinfo.getGreeting());
		System.out.println("ididid---------"+rankinfo.getId());
		
		model.addAttribute("rankinfo_search",rankinfo_search);
		model.addAttribute("rankinfo",rankinfo);
		return "rank/rankinfo_form";
	}
	
	/*@RequestMapping(value = "/rankinfoGreeting", method = RequestMethod.POST)
	@ResponseBody
	public String rankinfoGreeting(Model model,@ModelAttribute RankInfo rankinfo) {
		RankInfoDao dao = sqlSession.getMapper(RankInfoDao.class);
		
		dao.updateRow(rankinfo);
		
		System.out.println("update---------"+rankinfo.getGreeting());
		System.out.println("ididid---------"+rankinfo.getId());
		model.addAttribute("rankinfo",rankinfo);
		return "rank/rankinfo_form";
	}*/
	
	
	/*@RequestMapping(value = "paymentDetail", method = RequestMethod.POST)
	@ResponseBody
	public Payment paymentDetail( @RequestParam int seq) {
		PaymentDao dao=sqlSession.getMapper(PaymentDao.class);
		payment = dao.selectRow(seq);
		return payment;
	}*/

}
