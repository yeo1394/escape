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
import yeoinsu.escape.party.domain.PartyComment;
import yeoinsu.escape.party.service.ParPageServiceImpl;
import yeoinsu.escape.party.service.PartyComService;
import yeoinsu.escape.party.service.PartyService;
import yeoinsu.escape.thema.service.ThemaService;
import yeoinsu.escape.user.login.domain.User;

@Controller
@RequestMapping("/party")
public class PartyController {
	@Autowired PartyService partyService;
	@Autowired PartyComService partyComService;
	@Autowired ThemaService themaService;
	
	@RequestMapping
	public String Party(HttpServletRequest request,HttpSession session) {
		ParPageServiceImpl pageService = (ParPageServiceImpl)session.getAttribute("pageMaker");
		if(pageService == null) {
			ParPage page = new ParPage();
			Party party = partyService.getPage();
			ParPageServiceImpl pageServiceImpl = new ParPageServiceImpl(5,party.getPage(),page);
			request.setAttribute("pageMaker", pageServiceImpl);
			request.setAttribute("posts", partyService.getParties(page));
		}else {
			ParPage page = pageService.getPage();
			request.setAttribute("pageMaker", pageService);
			request.setAttribute("posts", partyService.getParties(page));
		};
		return "/party/partyMain";
	}
	
	@RequestMapping("/in")
	public String Content(HttpServletRequest request,int pageCnt) {
		Party party = partyService.getParty(pageCnt);
		request.setAttribute("Content",party);
		String themaTitle = party.getPartyThema();
		request.setAttribute("Thema", themaService.getThemaP(themaTitle));
		partyService.hitUpdate(pageCnt);
		request.setAttribute("Comment",partyComService.getCom(pageCnt));
		
		return "/party/partyContent";
	}
	
	@RequestMapping("/add")
	public String Add(HttpServletRequest request){
		request.setAttribute("thema", themaService.getThemas());
		return "/party/partyAdd";
	}
	
	@RequestMapping("/join")
	public String Join(String partyThema,String partyTime,String partyContent,HttpSession session) {
		User user = (User)session.getAttribute("nowUser");
		String userId = user.getUserId();
		Party party = new Party(partyThema,partyTime,partyContent,userId);
		partyService.addParty(party);
		return "redirect:/party";
	}
	
	@RequestMapping("/updateIn")
	public String UpdateIn(String partyThema,String partyTime,String partyContent,
			HttpSession session, int partyNo) {
		User user = (User)session.getAttribute("nowUser");
		String userId = user.getUserId();
		Party party = new Party(partyThema,partyTime,partyContent,userId);
		party.setPartyNo(partyNo);
		partyService.update(party);
		return "redirect:/party";
	}
	
	@RequestMapping("/com")
	@ResponseBody
	public List<PartyComment> Com(HttpSession session,int partyNo,String partyComContent) {
		System.out.println(partyComContent);
		User user = (User)session.getAttribute("nowUser");
		String userId = user.getUserId();
		PartyComment partyCom = new PartyComment(partyNo,partyComContent,userId);
		if(!partyComContent.equals("")){
			partyComService.addCom(partyCom);			
		}
		return partyComService.getCom(partyNo);
	}
	
	@RequestMapping("/update")
	public String Update(int partyNo,HttpServletRequest request) {
		request.setAttribute("party", partyService.getParty(partyNo));
		request.setAttribute("thema", themaService.getThemas());
		return "/party/partyAdd";
	}
	
	@RequestMapping("/delete")
	public String Delete(int partyNo) {
		partyService.delete(partyNo);
		return "redirect:/party";
	}
}
