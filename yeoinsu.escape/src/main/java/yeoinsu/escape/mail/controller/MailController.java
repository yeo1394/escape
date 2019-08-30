package yeoinsu.escape.mail.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yeoinsu.escape.mail.domain.Message;
import yeoinsu.escape.mail.service.MailService;

@Controller
@RequestMapping("sendMail")
public class MailController {
	@Autowired private MailService mailService;
	
	@RequestMapping
	public String sendMain(){
		return "mail/mailSend";
	}
	
	@RequestMapping(value="sending", method=RequestMethod.POST)
	public String send(Message msg){
		mailService.sendAll(msg);
		return "mail/complete";
	}
}
