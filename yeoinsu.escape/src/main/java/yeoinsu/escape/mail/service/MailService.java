package yeoinsu.escape.mail.service;

import yeoinsu.escape.mail.domain.Message;

public interface MailService {
	void sendAll(Message msg);
	void send(String userMail, String userName, String txt);
}
