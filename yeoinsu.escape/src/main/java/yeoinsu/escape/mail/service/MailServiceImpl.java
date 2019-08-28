package yeoinsu.escape.mail.service;

import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import yeoinsu.escape.mail.domain.Message;
import yeoinsu.escape.user.login.service.LoginService;

@Service
public class MailServiceImpl implements MailService{
	@Autowired private JavaMailSender mailSender;
	@Autowired private LoginService loginService;
	
	public void sendAll(Message msg) {
		MimeMessage message = mailSender.createMimeMessage();
		try{
			String [] userMails = loginService.getMails();
			InternetAddress [] toAddr = new InternetAddress[userMails.length];
			for(int i = 0;i<loginService.getMails().length;i++){
				toAddr[i] = new InternetAddress(userMails[i]);
			}
			message.setFrom(new InternetAddress("dlstn1030@gmail.com"));
			message.setRecipients(RecipientType.TO, toAddr);
			message.setSubject(msg.getSubject());
			message.setText(msg.getTxt(),"utf-8","html");
		}catch(Exception e){}
			mailSender.send(message);
	}

	public void send(Message msg) {
		MimeMessage message = mailSender.createMimeMessage();
		try{
			message.setFrom(new InternetAddress("dlstn1030@gmail.com"));
			message.addRecipient(RecipientType.TO, new InternetAddress(msg.getTo()));
			message.setSubject(msg.getSubject());
			message.setText(msg.getTxt(),"utf-8","html");
		}catch(Exception e){}
			mailSender.send(message);
	}
}
