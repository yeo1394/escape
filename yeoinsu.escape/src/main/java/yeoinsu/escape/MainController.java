package yeoinsu.escape;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import yeoinsu.escape.thema.service.ThemaService;
import yeoinsu.escape.thema.domain.Thema;
import yeoinsu.escape.user.login.domain.User;

@Controller
@RequestMapping("/")
public class MainController {
	@Autowired ThemaService themaService;
	
	@RequestMapping
	public String main(HttpSession session){
		List<Thema> thema = themaService.getThemas();
		session.setAttribute("Themalist",thema);
		return "main";
	}
	
	@RequestMapping("/main")
	public String main2(HttpSession session){
		List<Thema> thema = themaService.getThemas();
		session.setAttribute("Themalist",thema);
		return "main";
	}
	
	@RequestMapping("/loginMain")
	public String userMain(HttpSession session){
		List<Thema> thema = themaService.getThemas();
		session.setAttribute("Themalist",thema);
		User nowUser = (User) session.getAttribute("nowUser");
		System.out.println("<<<현재 사용자 정보>>>");
		System.out.println("이    름: "+nowUser.getUserName());
		System.out.println("아 이 디: "+nowUser.getUserId());
		System.out.println("비밀번호: "+nowUser.getUserPw());
		System.out.println("메일주소: "+nowUser.getUserMail());
		System.out.println("전화번호: "+nowUser.getUserTel());
		System.out.println("마일리지: "+nowUser.getUserPoint());
		return "main";
	}
	
}
