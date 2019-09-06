package yeoinsu.escape.party.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yeoinsu.escape.party.domain.ParPage;
import yeoinsu.escape.party.domain.Party;
import yeoinsu.escape.party.service.ParPageServiceImpl;
import yeoinsu.escape.party.service.PartyService;

@Controller
@RequestMapping("/parPage")
public class ParPageController {
	@Autowired PartyService partyService;
	
	@RequestMapping("/list")
	@ResponseBody
	public List<Party> getParites(HttpServletRequest request,Integer pageCnt,
			HttpSession session) {
		ParPage page = new ParPage(pageCnt);
		Party party = partyService.getPage();
		ParPageServiceImpl pageServiceImpl = new ParPageServiceImpl(5,party.getPage(),page);
		request.setAttribute("pageMaker", pageServiceImpl);
		return partyService.getParties(page);
	}
	
	@RequestMapping("/paging")
	@ResponseBody
	public ParPageServiceImpl getPaging(HttpServletRequest request,Integer pageCnt,
			HttpSession session) {
		ParPage page = new ParPage(pageCnt);
		Party party = partyService.getPage();
		ParPageServiceImpl pageServiceImpl = new ParPageServiceImpl(5,party.getPage(),page);
		return pageServiceImpl;
	}
}
