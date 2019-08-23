package yeoinsu.escape.thema.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yeoinsu.escape.thema.domain.Thema;
import yeoinsu.escape.thema.service.ThemaService;

@Controller
@RequestMapping("/thema")
public class ThemaController {
	@Autowired ThemaService themaService;
	
	@RequestMapping("/main")
	public String main(){
		return "main";
	}
	
	@ResponseBody
	@RequestMapping("/getThemas")
	public List<Thema> getThemas(HttpSession session){
		List<Thema> thema = themaService.getThemas();
		session.setAttribute("Themalist",thema);
		return themaService.getThemas();
	}

	@RequestMapping("/themaindex")
	public String Themaindex(){
		return "thema/management/themaindex";
	}
}
