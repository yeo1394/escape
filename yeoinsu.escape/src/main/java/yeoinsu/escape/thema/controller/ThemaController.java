package yeoinsu.escape.thema.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import yeoinsu.escape.thema.domain.Thema;
import yeoinsu.escape.thema.service.ThemaService;

@Controller
@RequestMapping("/thema")
public class ThemaController {
	@Autowired ThemaService themaService;
		

	@RequestMapping("/themaindex")
	public String Themaindex(){
		return "thema/management/themaindex";
	}
	@RequestMapping("/update")
	public String update(){
		return "thema/update";
	}
	@RequestMapping(value="/modify",method = RequestMethod.POST)
	public String updateThema(Thema thema, HttpServletRequest request, HttpSession session) throws IllegalStateException, IOException{
		if(thema.getThemaImg() == null || thema.getThemaImg()==""){
			Thema oldThema = themaService.getThema(thema.getThemaNo());
			themaService.updateThema(new Thema(thema.getThemaTitle(),thema.getThemaNo(),
					thema.getThemaLevel(),thema.getThemaContent(),oldThema.getThemaImg()));
		}else{
			themaService.updateThema(thema);
		}
		List<Thema> themali=(List<Thema>)themaService.getThemas();
		session.setAttribute("Themalist", themali);
		return "thema/complete";
	}
	
	@RequestMapping(value="/secede",method = RequestMethod.POST)
	public String secede(Thema thema){
		String no = thema.getThemaNo();
		String no2 = no+"번 준비중";
		thema.setThemaTitle(no2);
		themaService.deleteThema(thema);
		return "thema/complete";
	}
	
	@RequestMapping("/getThemas")
	@ResponseBody
	public List<Thema> getThemas(HttpSession session){
		List<Thema> thema = themaService.getThemas();
		session.setAttribute("themalist", thema);
		return themaService.getThemas();
	}
}
