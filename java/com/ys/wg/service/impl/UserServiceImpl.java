package com.ys.wg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ys.wg.dao.UserDao;
import com.ys.wg.model.User;
import com.ys.wg.service.UserService;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;

	public User getUserById(int userId) {
		return userDao.selectUserById(userId);
	}

	public User getUserByPhoneOrEmail(String emailOrPhone, Short state) {
		return userDao.selectUserByPhoneOrEmail(emailOrPhone, state);
	}

	public List<User> getAllUser() {
		return userDao.selectAllUser();
	}

	public User userLogin(String userName, String password) {

		return userDao.userLogin(userName, password);
	}

	public User selectUserByName(String userName) {

		return userDao.selectUserByName(userName);
	}

	public boolean insertUser(User user) {

		return userDao.insertUser(user);
	}

	public int selectUserNumByName(User user) {

		return userDao.selectUserNumByName(user);
	}

	public List<User> selectUserInforListByName(User user) {
		int usertotal = this.selectUserNumByName(user);
		user.setUsertotal(usertotal);
		user.count();

		List<User> userlist = userDao.selectUserInforListByName(user);

		return userlist;
	}

	public List<User> selectUserInforByName(String userName) {
		return userDao.selectUserInforByName(userName);
	}

	public boolean updateUserInfor(String userName, String password,
			String userInformation) {

		return userDao.updateUserInfor(userName, password,
				userInformation);
	}

	public User selectUserInfo(String userName) {

		return userDao.selectUserInfo(userName);
	}

	public User selectUserInfoById(Long id) {

		return userDao.selectUserInfoById(id);
	}

	public boolean updateUserIsDelete(User user) {

		return userDao.updateUserIsDelete(user);
	}

	public User selectUserInforById(Long id) {

		return userDao.selectUserInforById(id);
	}

}
