package com.ys.wg.service.impl;



import com.ys.wg.dao.UserDao;
import com.ys.wg.model.User;
import com.ys.wg.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

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
        return userDao.selectUserByPhoneOrEmail(emailOrPhone,state);
    }
    
    public List<User> getAllUser() {
        return userDao.selectAllUser();
    }

	public User userLogin(String userName, String password) {
		
		return userDao.userLogin(userName,password);
	}

	public User selectUserByName(String userName) {
	
		return userDao.selectUserByName(userName);
	}

	public boolean insertUser(User user) {
		
		return userDao.insertUser(user);
	}

	public List<User> selectUserInforByName(String userName) {
	
		return userDao.selectUserInforByName(userName);
	}

	public boolean updateUserInfor(String userName,String password, String headImage, String userInformation) {
		
		return userDao.updateUserInfor(userName,password,headImage,userInformation);
	}

	public User selectUserInfo(String userName) {
		
		return userDao.selectUserInfo(userName);
	}


}
