package com.github.itsteam4.simplerpg.web.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.File;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.itsteam4.simplerpg.web.entity.FreeBoard;
import com.github.itsteam4.simplerpg.web.entity.FreeBoardComment;
import com.github.itsteam4.simplerpg.web.entity.FreeBoardPaging;
import com.github.itsteam4.simplerpg.web.service.FreeBoardCommentDAO;
import com.github.itsteam4.simplerpg.web.service.FreeBoardDAO;

@Controller
public class CommunityController {
	@Autowired
	SqlSession sqlSession;
	@Autowired
	FreeBoard fboard;
	@Autowired
	private FreeBoardPaging fboardpaging;
	static String find;
	@Autowired
	private FreeBoardComment fcomment;
	
//	스크린샷 게시판 이동
	@RequestMapping(value="ScreenFreeBoardForm",method=RequestMethod.GET)
	public String ScreenBoardForm() {
		return "Community/screenshot_board_form";
	}
//	스크린샷 글쓰기 창 이동
	@RequestMapping(value="ScreenshotInsertForm",method=RequestMethod.GET)
	public String ScreenShotInsertForm() {
		System.out.println("창이동");
		return "Community/screenshot_board_insert_form";
	}
	
//	자유게시판 페이지 처리
	@RequestMapping(value="FreeBoardForm",method=RequestMethod.GET)
	public String FreeBoardForm(Model model,String find) {
		if(find == null)
			find = "";
		this.find = find;
		int pagesize = 5;
		int startrow = 0;
		int endrow = startrow + pagesize;
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		fboardpaging.setFind(find);
		fboardpaging.setStartrow(startrow);
		fboardpaging.setEndrow(endrow);
		ArrayList<FreeBoard> boards = dao.freeboardpagelist(fboardpaging);
		int rowcount = dao.fselectrowcount(find);
		int absPage = 1;
		if(rowcount % pagesize == 0)
			absPage = 0;
		int pageCount = rowcount / pagesize + absPage;
		int[] pages = new int[pageCount];
		for(int i = 0; i <pageCount;i++) {
			pages[i] = i+1;
		}
		
		
		model.addAttribute("boards",boards);
		model.addAttribute("pages",pages);
		return "Community/free_board_form";
	}
//	자유게시판 리스트 페이지
	@RequestMapping(value="FreeboardPageListSelected",method=RequestMethod.GET)
	public String FreeBoardPageSelected(Model model,int page) {
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		int pagesize = 5;
		int startrow = (page - 1) * pagesize;
		int endrow = pagesize;
		
		fboardpaging.setFind(find);
		fboardpaging.setStartrow(startrow);
		fboardpaging.setEndrow(endrow);
		ArrayList<FreeBoard> boards = dao.freeboardpagelist(fboardpaging);
		int rowcount = dao.fselectrowcount(find);
		int absPage = 1;
		if(rowcount % pagesize == 0)
			absPage = 0;
		int pageCount = rowcount / pagesize + absPage;
		int[] pages = new int[pageCount];
		for(int i= 0; i <pageCount; i++) {
			pages[i] = i+1;
		}
		model.addAttribute("boards",boards);
		model.addAttribute("pages",pages);
		return "Community/free_board_form";
	}
//	팁/노하우 게시판 이동
	@RequestMapping(value="TipKnowBoardForm",method=RequestMethod.GET)
	public String TipKnowBoardForm() {
		return "Community/tip_know_how_board_form";
	}
//	자유게시판 글쓰기 창 이동
	@RequestMapping(value="FreeBoardInsertForm",method=RequestMethod.GET)
	public String FreeBoardInsertForm() {
		return "Community/free_board_insert_form";
	}

//	자유게시판 게시글 등록
	@RequestMapping(value="FreeBoardInsertsubmit",method=RequestMethod.POST)
	public String FreeBoardInsert(@ModelAttribute FreeBoard boards,HttpServletRequest request) {
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		int result = dao.freeinsertrow(boards);
		System.out.println("컨텐츠값: "+request.getParameter("f_content"));
		if(result>0) {
			System.out.println("저장되었습니다: "+result);
		}else {
			System.out.println("저장 실패했습니다.");
		}
		request.getParameter("f_content");
		return "redirect:FreeBoardForm";
	}
//	자유게시판 게시글 상세페이 이동
	@RequestMapping(value="freeboarddetailform",method=RequestMethod.GET)
	public String FreeBoardPageForm(Model model,HttpSession session,@RequestParam int f_no) {
		System.out.println("디테일 페이지 이동");
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		FreeBoard boards = dao.freeboardselectone(f_no);
		if(!boards.getF_writer().equals(session.getAttribute("sessionid"))) {
			dao.fupdatehit(f_no);
		}
		model.addAttribute("boards",boards);
		return "Community/free_board_detail_form";
	}
//	자유게시판 게시물 업데이트 페이지 이동
	@RequestMapping(value="FreeBoardUpdateForm",method=RequestMethod.GET)
	public String FreeBoardUpdateForm(Model model,@RequestParam int f_no) {
		
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		FreeBoard boards = dao.freeboardselectone(f_no);
		model.addAttribute("boards",boards);
		return "Community/free_board_update_form";
	}
//	ck에디터 사진 업로드 구현
	 @RequestMapping(value = "/resources/fileupload", method = RequestMethod.POST)
	    public void communityImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) {
		 	System.out.println("컨트롤러");
	        OutputStream out = null;
	        PrintWriter printWriter = null;
	        response.setCharacterEncoding("utf-8");
	        response.setContentType("text/html;charset=utf-8");
	 
	        try{
	 
	            String fileName = upload.getOriginalFilename();
	            byte[] bytes = upload.getBytes();
	            String uploadPath = "D:/simplerpg/simplerpg-web/src/main/webapp/resources/fileupload/" + fileName;//저장경로
	            
	            out = new FileOutputStream(new File(uploadPath));
	            out.write(bytes);
	            String callback = request.getParameter("CKEditorFuncNum");
	            System.out.println(callback);
	            printWriter = response.getWriter();
	            String fileUrl =request.getContextPath()+"/resources/fileupload/"+ fileName;
	            String script="<script>window.parent.CKEDITOR.tools.callFunction(";
	    	    script +=callback;
	    	    script +=", '";
	    	    script +=fileUrl;
	    	    script +=" ' , '이미지를 업로드 했습니다.'";
	    	    script +=") </script>";
	            printWriter.println(script);
	            printWriter.flush();
	 
	        }catch(IOException e){
	            e.printStackTrace();
	        } finally {
	            try {
	                if (out != null) {
	                    out.close();
	                }
	                if (printWriter != null) {
	                    printWriter.close();
	                }
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }
	 
	        return;
	    }
	
//	자유게시판 게시글 수정 구현
	@RequestMapping(value="FreeBoardUpdates",method=RequestMethod.POST)
	public String FreeBoardUpdate(@ModelAttribute FreeBoard fboard) {
		System.out.println("업데이트 버튼 활성화");
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		
		System.out.println("작성자"+fboard.getF_writer());
		System.out.println("제목"+fboard.getF_title());
		System.out.println("글번호"+fboard.getF_no());
		System.out.println("내용"+fboard.getF_content());
		
		int result =dao.fupdaterow(fboard);
		System.out.println(result);
		
		return "redirect:FreeBoardForm";
	}
//	자유게시판 게시글 삭제 구현
	@RequestMapping(value="FreeBoardDelete",method=RequestMethod.GET)
	public String FreeBoardDelete(@RequestParam int f_no) {
		System.out.println("삭제버튼 활성화");
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		dao.fdeleterow(f_no);	
		System.out.println("삭제되었습니다.");
		return "redirect:FreeBoardForm";
	}
//	자유게시판 댓글 입력 Ajax 호출
	@RequestMapping(value="/FreeBoardCommentInsert",method=RequestMethod.POST)
	@ResponseBody
	public String FreeBoardCommentInsert(Model model,HttpSession session,@ModelAttribute FreeBoardComment comment) {
		System.out.println("호출 성공");
		
		return "success";
	}
}
