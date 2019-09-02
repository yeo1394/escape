package yeoinsu.escape.user.login.dao.mapper;

import org.apache.ibatis.annotations.Param;

import yeoinsu.escape.user.login.domain.User;

public interface LoginMapper {
	User getUserInfo(String userId);
	int addUser(User user);
	int checkId(String userId);
	int updateUser(User user);
	int deleteUser(String userId);
	String[] getMails();
	User findUserInfo(String userName);
	int newPw2(@Param("userId")String userId, @Param("userPw")String userPw);
}
