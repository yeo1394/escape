package yeoinsu.escape.user.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yeoinsu.escape.user.login.dao.LoginDao;
import yeoinsu.escape.user.login.domain.User;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired LoginDao loginDao;
	
	public User getUser(String userId) {
		return loginDao.getUserInfo(userId);
	}
	
	public boolean addUser(User user) {
		return loginDao.addUser(user) > 0;
	}

	public int userIdCheck(String userId) {
		return loginDao.checkId(userId);
	}
	
}
