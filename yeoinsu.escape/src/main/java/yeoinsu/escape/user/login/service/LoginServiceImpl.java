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

	public boolean correctUser(User user) {
		return loginDao.updateUser(user) > 0;
	}

	public boolean secedeUser(String userId) {
		return loginDao.deleteUser(userId) > 0;
	}

	public String[] getMails() {
		return loginDao.getMails();
	}
	
	public User findUser(String userName){
		return loginDao.findUserInfo(userName);
	}

	public int newPw(String userId,String userPw) {
		return loginDao.newPw2(userId, userPw);
	}
	
}
