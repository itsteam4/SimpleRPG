package com.github.itsteam4.simplerpg.web.client.Controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.itsteam4.simplerpg.web.client.entity.UserData;
import com.github.itsteam4.simplerpg.web.client.service.UserDataDao;

@Controller
public class InGameController {
	
	@Autowired
	 private SqlSession sqlSession;
	@Autowired
	UserData UserData;
	
	@RequestMapping(value="InGameForm",method=RequestMethod.POST)
	public String LogoPage(@RequestParam("gid") String gid, Model model) {
		
		UserDataDao UDD = sqlSession.getMapper(UserDataDao.class);
		
		String testuser = gid;		//나중에 세션으로 아이디 받음
		int getId = UDD.searchID(testuser);		//계정이 이미 케릭터가 있는지 검사
		
		if(getId == 0) {
			UDD.insertUser(testuser);		//없다면 샘성
		}else if(getId == 1) {
			//플레이 했던 유저라면 여기서 db의 값을 가져옴 라켔는데 gamejs에서 처리함
		}
		model.addAttribute("id", testuser);
		
		return "/ingame_form";
	}
	
	@RequestMapping(value = "/getUserData", method = RequestMethod.POST)
	@ResponseBody
	public int getUserData(@ModelAttribute UserData UserData) {
		UserDataDao UDD = sqlSession.getMapper(UserDataDao.class);
		UDD.userUpdate(UserData);
		return 1;
	}
	@RequestMapping(value = "/UserDataLoding", method = RequestMethod.POST)
	@ResponseBody
	public UserData UserDataLoding(@ModelAttribute UserData UserData) {
		UserDataDao UDD = sqlSession.getMapper(UserDataDao.class);
		String id = UserData.getId();
		UserData data = UDD.userDataLoding(id);
		return data;
	}
}
