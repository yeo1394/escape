package yeoinsu.escape.user.login.service;

import yeoinsu.escape.user.login.domain.User;

public interface LoginService {
	User getUser(String userId);
	boolean addUser(User user);
	int userIdCheck(String userId);
}
