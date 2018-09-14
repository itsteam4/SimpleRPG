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
	
//	ȸ������ ������ �̵�
	@RequestMapping(value="MemberInsertForm",method=RequestMethod.GET)
	public String MemberForm() {
		return "Member/MemberInsertForm";
	}
//	ȸ�� ��� �޼ҵ�
	@RequestMapping(value="MemberInsert",method=RequestMethod.POST)
	public String MemberInsert(Model model,@ModelAttribute Member member) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		
		int result = dao.MemberInsertRow(member);
		
		if(result>0) {
			System.out.println("success: "+result);
			model.addAttribute("msg","회원가입에 성공하였습니다..");
		}else {
			System.out.println("회원가입에 실패했습니다.");
		}
		return "Login/LoginForm";
	}
//	���̵� �ߺ�üũ �˻�
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
	
//	�α��� ������ ȭ���̵�
	@RequestMapping(value="LoginPageForm",method=RequestMethod.GET)
	public String LoginForm() {
		return "Login/LoginForm";
	}
	
//	�α���
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String Login(@ModelAttribute Member member) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		Member data = dao.login(member.getId());
		if(data == null) {
			return "Login/LoginFail";
		}else {
			if(data.getPw().equals(member.getPw())) {
				System.out.println("�α��� ����");
				session.setAttribute("sessionid", data.getId());
				session.setAttribute("sessionpw", data.getPw());
				return "redirect:IndexForm";
			}else {
				System.out.println("�α��� ���� ���������� �� ����������");
				return "Login/LoginFail";
			}
		}
	}
	
	
}
