package yeoinsu.escape.user.login.dao.mapper;

import yeoinsu.escape.user.login.domain.User;

public interface LoginMapper {
	User getUserInfo(String userId);
	int addUser(User user);
	int checkId(String userId);
	int updateUser(User user);
	int deleteUser(String userId);
	String[] getMails();
}
