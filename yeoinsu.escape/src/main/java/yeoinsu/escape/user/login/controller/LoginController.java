package yeoinsu.escape.user.login.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import yeoinsu.escape.user.login.domain.User;
import yeoinsu.escape.user.login.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired LoginService loginService;
	
	@RequestMapping
	public String login(HttpSession session){
		session.setAttribute("nowUser", null);
		return "user/login";
	}

	@RequestMapping("/getUser")
	@ResponseBody
	public User getUser(String userId, HttpSession session){
		User user = loginService.getUser(userId);
		if(user != null && !user.equals("")){
			session.setAttribute("nowUser", user);
		}
		return loginService.getUser(userId);
	}
	
	@RequestMapping("/agreement")
	public String agreement(){
		return "user/join/agreement";
	}
	
	@RequestMapping("/join")
	public String join(){
		return "user/join/join";
	}
	
	@RequestMapping(value="/userIdCheck", method = RequestMethod.POST)
	@ResponseBody
	public int userIdCheck(@RequestParam("userId") String userId){
		return loginService.userIdCheck(userId); 
	}
	
	@RequestMapping(value="/joinUser", method = RequestMethod.POST)
	public String joinUser(User user, HttpServletRequest request) {
		loginService.addUser(user);
		request.setAttribute("name", user.getUserName());
		return "user/join/complete";
	}
	
	@RequestMapping("/logout")
	public String logout( HttpSession session){
		session.invalidate();
		return "redirect:user/login";
	}
}
