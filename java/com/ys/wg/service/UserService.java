package com.ys.wg.service;


import com.ys.wg.model.Blog;
import com.ys.wg.model.User;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface UserService {

    List<User> getAllUser();

    User getUserByPhoneOrEmail(String emailOrPhone, Short state);

    User getUserById(int userId);

    //登录
	User userLogin(User user);
	//注册查重
	User selectUserByName(String userName);
	//注册
	boolean insertUser(User user);
	//显示用户信息
	List<User> selectUserInforByName(String userName);

	boolean updateUserInfor(User user);

	boolean blogInsert(Blog blog);

}
