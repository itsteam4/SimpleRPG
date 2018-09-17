package com.github.itsteam4.simplerpg.web.Controller;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.io.InputStream;
import java.io.File;
import java.util.List;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.itsteam4.simplerpg.web.entity.Member;
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
	
	
//	동영상 게시판 이동
	@RequestMapping(value="MediaFreeBoardForm",method=RequestMethod.GET)
	public String MediaBoardForm() {
		
		return "Community/media_board_form";
	}
//	자유게시판 이동
	@RequestMapping(value="FreeBoardForm",method=RequestMethod.GET)
	public String FreeBoardForm(Model model) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		
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
// 자유게시판 단일 파일 업로드
	@RequestMapping("/photoUpload")
	public String photoUpload(HttpServletRequest request, Editor editor){
	    String callback = editor.getCallback();
	    String callback_func = editor.getCallback_func();
	    String file_result = "";
	    try {
	        if(editor.getFiledata() != null && editor.getFiledata().getOriginalFilename() != null && !editor.getFiledata().getOriginalFilename().equals("")){
	            //파일이 존재하면
	            String original_name = editor.getFiledata().getOriginalFilename();
	            String ext = original_name.substring(original_name.lastIndexOf(".")+1);
	            //파일 기본경로
	            String defaultPath = request.getSession().getServletContext().getRealPath("/");
	            //파일 기본경로 _ 상세경로
	            String path = defaultPath + "resource" + File.separator + "photo_upload" + File.separator;             
	            File file = new File(path);
	            System.out.println("path:"+path);
	            //디렉토리 존재하지 않을경우 디렉토리 생성
	            if(!file.exists()) {
	                file.mkdirs();
	            }
	            //서버에 업로드 할 파일명(한글문제로 인해 원본파일은 올리지 않는것이 좋음)
	            String realname = UUID.randomUUID().toString() + "." + ext;
	        ///////////////// 서버에 파일쓰기 /////////////////
	            editor.getFiledata().transferTo(new File(path+realname));
	            file_result += "&bNewLine=true&sFileName="+original_name+"&sFileURL=/resources/photo_upload/"+realname;
	        } else {
	            file_result += "&errstr=error";
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return "redirect:" + callback + "?callback_func="+callback_func+file_result;
	}
// 자유게시판 다중 파일 업로드
	@RequestMapping("/file_uploader_html5")
	public void FileUpload(HttpServletRequest request,HttpServletResponse response) {
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
				String dftFilePath = request.getSession().getServletContext().getRealPath("/");
//				파일 기본경로_상세경로
				String filePath = dftFilePath +"resources"+File.separator+"editor"+File.separator+"multiupload" + File.separator;
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
				sFileInfo += "&sFileURL="+"/resources/editor/multiupload/"+realFileNm;
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
	@RequestMapping(value="FreeBoardInsert",method=RequestMethod.POST)
	public String BoardInsert(@ModelAttribute FreeBoard fboard) {
		FreeBoardDAO dao = sqlSession.getMapper(FreeBoardDAO.class);
		int result = dao.freeinsertrow(fboard);
		if(result>0) {
			System.out.println("저장되었습니다: "+result);
		}else {
			System.out.println("저장 실패했습니다.");
		}
		
		return "redirect:FreeBoardForm";
	}
}
