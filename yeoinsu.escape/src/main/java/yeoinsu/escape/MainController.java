package yeoinsu.escape;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import yeoinsu.escape.user.login.domain.User;

@Controller
@RequestMapping("/")
public class MainController {
	@RequestMapping
	public String main1(){
		return "main";
	}
	
	@RequestMapping("/main")
	public String main2(){
		return "main";
	}
	
	@RequestMapping("/userMain")
	public String userMain(HttpSession session){
		User nowUser = (User) session.getAttribute("nowUser");
		System.out.println("<<<현재 사용자 정보>>>");
		System.out.println("이    름: "+nowUser.getUserName());
		System.out.println("아 이 디: "+nowUser.getUserId());
		System.out.println("비밀번호: "+nowUser.getUserPw());
		System.out.println("메일주소: "+nowUser.getUserMail());
		System.out.println("전화번호: "+nowUser.getUserTel());
		System.out.println("마일리지: "+nowUser.getUserPoint());
		return "user/userMain";
	}
	
	@RequestMapping("/managerMain")
	public String managerMain(HttpSession session){
		User nowUser = (User) session.getAttribute("nowUser");
		System.out.println("<<<현재 사용자 정보>>>");
		System.out.println("이    름: "+nowUser.getUserName());
		System.out.println("아 이 디: "+nowUser.getUserId());
		System.out.println("비밀번호: "+nowUser.getUserPw());
		System.out.println("메일주소: "+nowUser.getUserMail());
		System.out.println("전화번호: "+nowUser.getUserTel());
		System.out.println("마일리지: "+nowUser.getUserPoint());
		return "thema/managerMain";
	}
}
