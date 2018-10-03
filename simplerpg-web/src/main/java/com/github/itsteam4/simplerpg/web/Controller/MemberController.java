package com.github.itsteam4.simplerpg.web.Controller;


import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.HtmlEmail;
import org.apache.ibatis.session.SqlSession;
import org.springframework.aop.ThrowsAdvice;
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
//	로그인 창 복귀
	@RequestMapping(value="LoginReturn",method=RequestMethod.GET)
	public String LoginReturn() {
		
		return "redirect:IndexForm";
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
				session.setAttribute("sessionemail", data.getEmail());
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
//	아이디 찾기 페이지
	@RequestMapping(value="LoginIdForgot",method=RequestMethod.GET)
	public String LoginIdForgotPage() {
		System.out.println("아이디 찾기 페이지 이동");
		return "Login/Login_id_forgot";
	}
//	아이디 찾기 구현
	@RequestMapping(value="MemberFindId",method=RequestMethod.POST)
	public String LoginIdFind(Model model,@RequestParam String email,HttpServletResponse response) throws Exception {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id= dao.findid(email);
		if(id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		}else {
			model.addAttribute("id",id);
			return "Login/Login_id_forgot_success";
		}
	}
//	비밀번호 찾기 페이지
	@RequestMapping(value="LoginPasswordForgot",method=RequestMethod.GET)
	public String LoginPasswordForgotPage() {
		System.out.println("비밀번호찾기 페이지 이동");
		return "Login/Login_password_forgot";
	}
//	비밀번호 찾기
	@RequestMapping(value="/PasswordFind",method=RequestMethod.POST)
	@ResponseBody
	public void LoginFindPw(@ModelAttribute Member member,HttpServletResponse response,@RequestParam String email,@RequestParam String id) throws Exception {
		find_pw(response, member);
	}
	
//	비밀번호 찾기 구현
	public void find_pw(HttpServletResponse response, Member member) throws Exception {
		MemberDAO dao= sqlSession.getMapper(MemberDAO.class);
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		// 아이디가 없으면
		if(dao.ConfirmCheck(member.getId()) == 0) {
			out.print("아이디가 없습니다.");
			out.close();
		}
		// 가입에 사용한 이메일이 아니면
		else if(!member.getEmail().equals(dao.login(member.getId()).getEmail())) {
			out.print("잘못된 이메일 입니다.");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			member.setPw(pw);
			// 비밀번호 변경
			dao.findpw(member);
			// 비밀번호 변경 메일 발송
			send_mail(member, "find_pw");
			
			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	}
	
	
//	메일 수신
	public void send_mail(Member member,String div) throws Exception {
		// Mail Server 설정
		String charSet = "UTF-8";
		String hostSMTP = "smtp.naver.com";
		String hostSMTPid = "qwertasd1981@naver.com";
		String hostSMTPpwd = "team4##1008";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "itschoolteam4@gmail.com";
		String fromName = "Spring Homepage";
		String subject = "";
		String msg = "";
		
		if(div.equals("find_pw")) {
			subject = "Spring Homepage 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += member.getId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += member.getPw() + "</p></div>";
		}
		// 받는 사람 E-Mail 주소
		String mail = member.getEmail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587);

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}
}

