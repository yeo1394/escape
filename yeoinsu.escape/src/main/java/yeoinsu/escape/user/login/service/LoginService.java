package yeoinsu.escape.user.login.service;

import yeoinsu.escape.user.login.domain.User;

public interface LoginService {
	User getUser(String userId);
	boolean addUser(User user);
	int userIdCheck(String userId);
	boolean correctUser(User user);
	boolean secedeUser(String userId);
	String[] getMails();
	User findUser(String userName);
	int newPw(String userId, String userPw);
}
