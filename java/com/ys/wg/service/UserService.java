package com.ys.wg.service;

import com.ys.wg.model.Blog;
import com.ys.wg.model.Comment;
import com.ys.wg.model.User;

import java.util.List;

public interface UserService {

	List<User> getAllUser();

	User getUserByPhoneOrEmail(String emailOrPhone, Short state);

	User getUserById(int userId);

<<<<<<< HEAD
	// 登录
	User userLogin(User user);

	// 注册查重
=======
    //登录
    User userLogin(User user);
	//注册查重
>>>>>>> 76d544d269cff5d8a081f5bb84c70b990712d998
	User selectUserByName(String userName);

	// 注册
	boolean insertUser(User user);

	// 显示用户信息
	List<User> selectUserInforByName(String userName);

	boolean updateUserInfor(User user);

	boolean blogInsert(Blog blog);

	boolean insertComment(Comment comment);

}
