package yeoinsu.escape.user.login.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yeoinsu.escape.user.login.dao.mapper.LoginMapper;
import yeoinsu.escape.user.login.domain.User;

@Repository
public class LoginDaoImpl implements LoginDao{
	@Autowired LoginMapper loginMapper;
	
	public User getUserInfo(String userId) {
		return loginMapper.getUserInfo(userId);
	}
	
	public int addUser(User user) {
		return loginMapper.addUser(user);
	}

	public int checkId(String userId) {
		return loginMapper.checkId(userId);
	}

	public int updateUser(User user) {
		return loginMapper.updateUser(user);
	}

	public int deleteUser(String userId) {
		return loginMapper.deleteUser(userId);
	}

	public String[] getMails() {
		return loginMapper.getMails();
	}
	
}
