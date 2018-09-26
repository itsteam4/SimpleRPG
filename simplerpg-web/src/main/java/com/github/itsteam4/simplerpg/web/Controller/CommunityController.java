package com.github.itsteam4.simplerpg.web.Controller;

import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.io.InputStream;
import java.io.File;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.itsteam4.simplerpg.web.entity.Editor;
import com.github.itsteam4.simplerpg.web.entity.FreeBoard;
import com.github.itsteam4.simplerpg.web.service.FreeBoardDAO;
import com.github.itsteam4.simplerpg.web.service.MemberDAO;

@Controller
public class CommunityController {
	@Autowired
	SqlSession sqlSession;
	@Autowired
	FreeBoard fboard;
	
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
	public String FreeBoardForm(Model model) {
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		ArrayList<FreeBoard> boards = dao.freeboardpagelist();
		model.addAttribute("boards",boards);
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
// 자유게시판 다중 파일 업로드
	@RequestMapping(value="/file_uploader_html5")
	public void FileUpload(HttpServletRequest request,HttpServletResponse response) {
		System.out.println("in FileUpload()");
		
		try {
//			파일정보
			String sFileInfo ="";
//			파일명을 받는다 - 일반 원폰 파일명
			String filename = request.getHeader("file-name");
//			파일 확장자
			String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
//			확장자를 소문자로 변경
			filename_ext = filename_ext.toLowerCase();
			
//			이미지 검증 배열 변수
			String[] allow_file= {"jpg","png","bmp","gif"};
			
//			돌리면서 확장자가 이미지인지 확인
			int cnt = 0;
			for(int i=0;i<allow_file.length;i++) {
				if(filename_ext.equals(allow_file[i])) {
					cnt++;
				}
			}
//			이미지가 아님
			if(cnt == 0) {
				PrintWriter print = response.getWriter();
				print.print("NOTALLOW_"+filename);
				print.flush();
				print.close();
			}else {
//				이미지이므로 신규 파일로 디렉토리 설정 및 업로드
//				파일 기본경로
//				파일 기본경로_상세경로
				String filePath = "D:"+File.separator+"simplerpg"+File.separator+"simplerpg-web"+File.separator+"src"+File.separator+"main"+File.separator+"webapp"+File.separator+"resources"+File.separator+"fileupload"+File.separator;
				File file = new File(filePath);
				if(!file.exists()) {
					file.mkdirs();
				}
				String realFileNm = "";
				SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
				String today= formatter.format(new java.util.Date()); realFileNm = today+UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
				String rlFileNm = filePath + realFileNm;
				// 서버에 파일쓰기 
				InputStream is = request.getInputStream();
				OutputStream os=new FileOutputStream(rlFileNm);
				int numRead;
				byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
				while((numRead = is.read(b,0,b.length)) != -1){
					os.write(b,0,numRead);
				} 
				if(is != null) {
					is.close();
				}
				os.flush();
				os.close();
				//서버에 파일쓰기 
				//정보 출력
				sFileInfo += "&bNewLine=true"; 
				// img 태그의 title 속성을 원본파일명으로 적용시켜주기 위함
				sFileInfo += "&sFileName="+ filename;
				sFileInfo += "&sFileURL="+"/itsteam4/resources/fileupload/" + realFileNm;
				
				PrintWriter print = response.getWriter();
				print.print(sFileInfo);
				print.flush();
				print.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
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
//	자유게시판 게시글 페이징 이동
	@RequestMapping(value="freeboarddetailform",method=RequestMethod.GET)
	public String FreeBoardPageForm(Model model,@RequestParam int f_no) {
		System.out.println("디테일 페이지 이동");
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		FreeBoard boards = dao.freeboardselectone(f_no);
		model.addAttribute("boards",boards);
		return "Community/free_board_detail_form";
	}
//	자유게시판 게시물 업데이트 페이지 이동
	@RequestMapping(value="FreeBoardUpdateForm",method=RequestMethod.GET)
	public String FreeBoardUpdateForm(Model model,@RequestParam int f_no) {
		System.out.println("업데이트 페이지 이동");
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		FreeBoard boards = dao.freeboardselectone(f_no);
		System.out.println("content:"+boards.getF_content());
		System.out.println("writer:"+boards.getF_writer());
		System.out.println("title:"+boards.getF_title());
		model.addAttribute("boards",boards);
		return "Community/free_board_update_form";
	}
//	자유게시판 게시글 수정 구현
	@RequestMapping(value="FreeBoardUpdate",method=RequestMethod.POST)
	public String FreeBoardUpdate(@ModelAttribute FreeBoard fboard) {
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		
		System.out.println("타이틀"+fboard.getF_title());
		System.out.println("내용"+fboard.getF_content());
		System.out.println("시퀸스"+fboard.getF_no());
		
		int result = dao.fupdaterow(fboard);
		System.out.println("result: "+result);
		return "redirect:FreeBoardForm";
	}
	
}
