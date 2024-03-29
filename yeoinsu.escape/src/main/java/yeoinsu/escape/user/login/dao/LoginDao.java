package yeoinsu.escape.user.login.dao;

import yeoinsu.escape.user.login.domain.User;

public interface LoginDao {
	User getUserInfo(String userId);
	int addUser(User user);
	int checkId(String userId);
	int updateUser(User user);
	int deleteUser(String userId);
	String[] getMails();
	User findUserInfo(String userName);
	int newPw2(String userId,String userPw);
}
