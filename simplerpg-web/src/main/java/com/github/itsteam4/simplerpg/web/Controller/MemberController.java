package com.github.itsteam4.simplerpg.web.Controller;


import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.itsteam4.simplerpg.web.entity.Member;
import com.github.itsteam4.simplerpg.web.service.MemberDAO;

@Controller
public class MemberController {

	@Autowired
	SqlSession sqlSession;
	@Autowired
	Member member;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	@Autowired
	HttpSession session;
	
//	회원가입 페이지 이동
	@RequestMapping(value="MemberInsertForm",method=RequestMethod.GET)
	public String MemberForm() {
		return "Member/MemberInsertForm";
	}
//	회원 가입
	@RequestMapping(value="MemberInsert",method=RequestMethod.POST)
	public String MemberInsert(Model model,@ModelAttribute Member member) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		
		int result = dao.MemberInsertRow(member);
		
		if(result>0) {
			System.out.println("success: "+result);
			model.addAttribute("msg","회원 가입에 성공하였습니다..");
			return "Member/Member_success";
		}else {
			System.out.println("회원가입에 실패하였습니다..");
		}
		return "Login/LoginForm";
	}
//	아이디 중복 검사
	@RequestMapping(value="userconfirm",method=RequestMethod.POST)
	@ResponseBody
	public int MemberConfirm(@RequestParam String id) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		int result =0;
		try {
			result = dao.ConfirmCheck(id);
			System.out.println("result: "+result);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return result;
	}
	
//	로그인 페이지 이동
	@RequestMapping(value="LoginPageForm",method=RequestMethod.GET)
	public String LoginForm() {
		return "Login/LoginForm";
	}
	
// 로그인 구현
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String Login(@ModelAttribute Member member) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		Member data = dao.login(member.getId());
		if(data == null) {
			return "Login/LoginFail";
		}else {
			if(data.getPw().equals(member.getPw())) {
				session.setAttribute("sessionid", data.getId());
				session.setAttribute("sessionpw", data.getPw());
				session.setAttribute("sessionemail1", data.getEmail1());
				session.setAttribute("sessionemail2", data.getEmail2());
				session.setAttribute("sessionphone1", data.getPhone1());
				session.setAttribute("sessionphone2",data.getPhone2());
				session.setAttribute("sessionphone3", data.getPhone3());
				session.setAttribute("sessionaddr1", data.getAddr1());
				session.setAttribute("sessionaddr2", data.getAddr2());
				session.setAttribute("sessionaddr3", data.getAddr3());
				return "redirect:IndexForm";
			}else {
				return "Login/LoginFail";
			}
		}
	}
//	로그 아웃 기능 구현
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:IndexForm";
	}
//	개인정보수정 페이지 이동
	@RequestMapping(value="loginfo",method=RequestMethod.GET)
	public String Loginfo(Model model,@RequestParam String id) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		Member members = dao.selectOne(id);
		model.addAttribute("members", members);
		return "Member/member_update_form";
	}
// 개인정보 수정
	@RequestMapping(value="MemberUpdate",method=RequestMethod.POST)
	public String LoginUpdate(@ModelAttribute Member member){
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		try {
			int result = dao.memberUpdateRow(member);
			System.out.println("저장되었습니다.: "+result);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return "redirect:IndexForm";
	}
	
}
