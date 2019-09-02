package yeoinsu.escape.info;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/info")
public class InfoController {

	@RequestMapping("/guide")
	public String guide(){
		return "info/guide";
	}
	
	@RequestMapping("/map")
	public String map(){
		return "info/map";
	}
}
