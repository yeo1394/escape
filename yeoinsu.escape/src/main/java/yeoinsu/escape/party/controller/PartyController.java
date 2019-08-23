package yeoinsu.escape.party.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import yeoinsu.escape.party.service.PartyService;

@Controller("/party")
public class PartyController {
	@Autowired PartyService partyService;
	
	
	@RequestMapping
	public String Party(HttpServletRequest request) {
		request.setAttribute("posts", partyService.getParties());
		return "/party/partyMain";
	}
}
