package yeoinsu.escape.party.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import yeoinsu.escape.party.domain.Page;
import yeoinsu.escape.party.domain.Party;
import yeoinsu.escape.party.service.PageServiceImpl;
import yeoinsu.escape.party.service.PartyService;

@Controller
@RequestMapping("/party")
public class PartyController {
	@Autowired PartyService partyService;
	/*@Autowired PageService pageService;*/
	
	@RequestMapping
	public String Party(HttpServletRequest request,HttpSession session) {
		PageServiceImpl pageService = (PageServiceImpl)session.getAttribute("pageMaker");
		if(pageService == null) {
			Page page = new Page();
			Party party = partyService.getPage();
			PageServiceImpl pageServiceImpl = new PageServiceImpl(5,party.getPage(),page);
			request.setAttribute("pageMaker", pageServiceImpl);
			request.setAttribute("posts", partyService.getParties(page));
		}else {
			Page page = pageService.getPage();
			request.setAttribute("pageMaker", pageService);
			request.setAttribute("posts", partyService.getParties(page));
		};
		return "/party/partyMain";
	}
}
