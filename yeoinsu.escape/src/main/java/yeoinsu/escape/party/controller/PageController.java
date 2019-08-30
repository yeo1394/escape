package yeoinsu.escape.party.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yeoinsu.escape.party.domain.Page;
import yeoinsu.escape.party.domain.Party;
import yeoinsu.escape.party.service.PageServiceImpl;
import yeoinsu.escape.party.service.PartyService;

@Controller
@RequestMapping("/page")
public class PageController {
	@Autowired PartyService partyService;
	
	@RequestMapping("/list")
	@ResponseBody
	public List<Party> getParites(HttpServletRequest request,Integer pageCnt,
			HttpSession session) {
		Page page = new Page(pageCnt);
		Party party = partyService.getPage();
		PageServiceImpl pageServiceImpl = new PageServiceImpl(5,party.getPage(),page);
		request.setAttribute("pageMaker", pageServiceImpl);
		return partyService.getParties(page);
	}
	
	@RequestMapping("/paging")
	@ResponseBody
	public PageServiceImpl getPaging(HttpServletRequest request,Integer pageCnt,
			HttpSession session) {
		Page page = new Page(pageCnt);
		Party party = partyService.getPage();
		PageServiceImpl pageServiceImpl = new PageServiceImpl(5,party.getPage(),page);
		return pageServiceImpl;
	}
}
