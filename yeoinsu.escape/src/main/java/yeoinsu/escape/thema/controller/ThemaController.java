package yeoinsu.escape.thema.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
