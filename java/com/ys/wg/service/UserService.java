package com.ys.wg.service;

import com.ys.wg.model.User;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface UserService {

	List<User> getAllUser();

	User getUserByPhoneOrEmail(String emailOrPhone, Short state);

	User getUserById(int userId);

	// 登录
	User userLogin(String userName, String password);

	// 注册查重
	User selectUserByName(String userName);

	// 注册
	boolean insertUser(User user);

	// 查询用户数量
	int selectUserNumByName(User user);

	// 查询用户列表
	List<User> selectUserInforListByName(User user);

	// 用户信息
	List<User> selectUserInforByName(String userName);

	// 修改个人信息
	boolean updateUserInfor(String userName, String password, String headImage,
			String userInformation);

	// 查看个人专页
	User selectUserInfo(String userName);

	// 根据ID查找个人主页
	User selectUserInfoById(Long id);

}
