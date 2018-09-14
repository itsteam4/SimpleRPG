package com.github.itsteam4.simplerpg.web.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.itsteam4.simplerpg.web.entity.Helpdesk;
import com.github.itsteam4.simplerpg.web.entity.HelpdeskPaging;
import com.github.itsteam4.simplerpg.web.service.HelpdeskDao;



@Controller
public class HelpdeskController {


	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private Helpdesk helpdesk;
	@Autowired
	private HelpdeskPaging helpdeskpaging;
	static String find;
	
	@RequestMapping(value = "/helpdeskInsertForm", method = RequestMethod.GET)
	public String helpdeskInsertForm() {
		return "helpdesk/helpdesk_page_list";
	}
	@RequestMapping(value = "/helpdeskInsert_Form", method = RequestMethod.GET)
	public String helpdeskInsert_Form() {
		return "helpdesk/helpdesk_insert_from";
	}
	@RequestMapping(value = "/helpdeskInsert", method = RequestMethod.POST)
	public String helpdeskInsert(@ModelAttribute Helpdesk helpdesk,@RequestParam CommonsMultipartFile file
								,HttpServletRequest request) {
		HelpdeskDao dao = sqlSession.getMapper(HelpdeskDao.class);
		String path = "C:/Users/IT/Documents/SimpleRPG/simplerpg-web/src/main/webapp/resources/uploadfiles/";
		String realpath = "resources/uploadfiles/";
		String originalname = file.getOriginalFilename();
		String filetime = System.currentTimeMillis()+"";
		if(!originalname.equals("")) {
			try {
				byte bytes[] = file.getBytes();
				BufferedOutputStream output =
						new BufferedOutputStream(new FileOutputStream(path+filetime+"_"+originalname));
				output.write(bytes);
				output.flush();
				output.close();
				helpdesk.setB_attach(realpath+filetime+"_"+originalname);
			} catch (Exception e) {
				System.out.println("file err:"+e.getMessage());
			}
		}
		helpdesk.setB_ip(request.getRemoteAddr());
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		helpdesk.setB_date(format.format(date));
		dao.insertRow(helpdesk);
		
		return "helpdesk/helpdesk_insert_form";
	}
	@RequestMapping(value = "/helpdeskPageList", method = RequestMethod.GET)
	public String helpdeskPageList(Model model,String find) {
		if(find == null) find = "";
		this.find = find;
		int pagesize = 10;
		int startrow = 0;
		int endrow = startrow + pagesize;
		HelpdeskDao dao = sqlSession.getMapper(HelpdeskDao.class);
		helpdeskpaging.setFind(find);
		helpdeskpaging.setStartrow(startrow);
		helpdeskpaging.setEndrow(endrow);
		ArrayList<Helpdesk> helpdesks =dao.pageList(helpdeskpaging);
		int rowcount= dao.selectRowCount(find);
		int absPage = 1;
		if(rowcount % pagesize == 0)
			absPage = 0;
		int pageCount = rowcount / pagesize + absPage;
		int[] pages = new int[pageCount];
		for(int i = 0; i < pageCount ; i++) {
			pages[i] = i+1;
		}
		model.addAttribute("helpdesks",helpdesks);
		model.addAttribute("pages",pages);
		return "helpdesk/helpdesk_page_list";
	}
	
	@RequestMapping(value = "/helpdeskPageListSelected", method = RequestMethod.GET)
	public String helpdeskPageList(Model model,int page) {
		HelpdeskDao dao = sqlSession.getMapper(HelpdeskDao.class); 
		
		int pagesize = 10;
		int startrow = (page - 1) * pagesize;
		int endrow = pagesize;
		
		helpdeskpaging.setFind(find);
		helpdeskpaging.setStartrow(startrow);
		helpdeskpaging.setEndrow(endrow);
		ArrayList<Helpdesk> helpdesks =dao.pageList(helpdeskpaging);
		int rowcount= dao.selectRowCount(find);
		int absPage = 1;
		if(rowcount % pagesize == 0)
			absPage = 0;
		int pageCount = rowcount / pagesize + absPage;
		int[] pages = new int[pageCount];
		for(int i = 0; i < pageCount ; i++) {
			pages[i] = i+1;
		}
		model.addAttribute("helpdesks",helpdesks);
		model.addAttribute("pages",pages);
		return "helpdesk/helpdesk_page_list";
	}
	
	@RequestMapping(value = "/helpdeskDetail", method = RequestMethod.GET)
	public String helpdeskDetail(Model model,HttpSession session,@RequestParam int h_seq) {
		HelpdeskDao dao = sqlSession.getMapper(HelpdeskDao.class);
		Helpdesk helpdesk=dao.selectOne(h_seq);
		if(!helpdesk.getB_email().equals(session.getAttribute("sessionemail"))) {
			dao.updateHit(h_seq);
		} 
		model.addAttribute("helpdesk",helpdesk);
		
		return "helpdesk/helpdesk_detail";
	}
	
	@RequestMapping(value = "/helpdeskUpdate", method = RequestMethod.POST)
	public String helpdeskUpdate(@ModelAttribute Helpdesk helpdesk,@RequestParam CommonsMultipartFile file) {
		
		HelpdeskDao dao = sqlSession.getMapper(HelpdeskDao.class);
		String path = "C:/Users/IT/Documents/SimpleRPG/simplerpg-web/src/main/webapp/resources/uploadfiles/";
		String realpath = "resources/uploadfiles/";
		String originalname = file.getOriginalFilename();
		String filetime = System.currentTimeMillis()+"";
		if(!originalname.equals("")) {
			try {
				byte bytes[] = file.getBytes();
				BufferedOutputStream output =
						new BufferedOutputStream(new FileOutputStream(path+filetime+"_"+originalname));
				output.write(bytes);
				output.flush();
				output.close();
				helpdesk.setB_attach(realpath+filetime+"_"+originalname);
			} catch (Exception e) {
				System.out.println("file err:"+e.getMessage());
			}
		}else {
			helpdesk.setB_attach(helpdesk.getB_beforeattach());
		}
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		helpdesk.setB_date(format.format(date));
		dao.updateRow(helpdesk);
		return "redirect:helpdeskPageList";
	}
	@RequestMapping(value = "/helpdeskDownload", method = RequestMethod.GET)
	 public ModelAndView helpdeskDownload(@RequestParam String h_attach) {
		String path="C:/Users/IT/Documents/SimpleRPG/simplerpg-web/src/main/webapp/";
		File file = new File(path+h_attach); 
		return new ModelAndView("download","downloadFile",file);
	 }
	
	@RequestMapping(value = "/helpdeskReplyForm", method = RequestMethod.GET)
	public String helpdeskReplyForm(Model model,HttpSession session,@RequestParam int h_seq,@RequestParam String h_title) {
		helpdesk.setB_email((String) session.getAttribute("sessionemail"));
		helpdesk.setB_name((String) session.getAttribute("sessionname"));
		helpdesk.setB_seq(h_seq);
		helpdesk.setB_title("[댓글] "+h_title);
		model.addAttribute("helpdesk",helpdesk);
		return "helpdesk/helpdesk_reply_form";
	}
	
	@RequestMapping(value = "/helpdeskReplyInsert", method = RequestMethod.POST)
	public String helpdeskReplyInsert(@ModelAttribute Helpdesk helpdesk,@RequestParam CommonsMultipartFile file
								,HttpServletRequest request) {
		HelpdeskDao dao = sqlSession.getMapper(HelpdeskDao.class);
		String path = "C:/Users/IT/Documents/SimpleRPG/simplerpg-web/src/main/webapp/resources/uploadfiles/";
		String realpath = "resources/uploadfiles/";
		String originalname = file.getOriginalFilename();
		String filetime = System.currentTimeMillis()+"";
		if(!originalname.equals("")) {
			try {
				byte bytes[] = file.getBytes();
				BufferedOutputStream output =
						new BufferedOutputStream(new FileOutputStream(path+filetime+"_"+originalname));
				output.write(bytes);
				output.flush();
				output.close();
				helpdesk.setB_attach(realpath+filetime+"_"+originalname);
			} catch (Exception e) {
				System.out.println("file err:"+e.getMessage());
			}
		}
		helpdesk.setB_ip(request.getRemoteAddr());
			//run > runconfigurations > argurments > vm-arguraments append > -Djava.net.preferIPv4Stack=true
		    //sts restart : because to ip
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		helpdesk.setB_date(format.format(date));
		dao.insertReplyRow(helpdesk);
		return "redirect:helpdeskPageList";
	}
	@RequestMapping(value = "/helpdeskDelete", method = RequestMethod.GET)
	public String helpdeskDelete(@RequestParam int h_seq,@RequestParam int h_ref) {
		HelpdeskDao dao = sqlSession.getMapper(HelpdeskDao.class);
		if(h_seq == h_ref) {
			dao.deleteRowref(h_ref);
		}else {
			dao.deleteRowseq(h_seq);
		}
		return "redirect:helpdeskPageList";
	}

}
