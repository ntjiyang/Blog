package com.ys.wg.dao;

import com.ys.wg.model.Admin;
import com.ys.wg.model.User;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Repository
public interface UserDao {

    User selectUserById(@Param("userId") int userId);

    User selectUserByPhoneOrEmail(@Param("emailOrPhone") String emailOrPhone, @Param("state") Short state);

    List<User> selectAllUser();

	User userLogin(@Param("userName") String userName,@Param("password") String password);

	User selectUserByName(String userName);

	boolean insertUser(User user);
	
	int selectUserNumByName(User user);

	List<User> selectUserInforByName(User user);

	boolean updateUserInfor(@Param("userName") String userName,@Param("password") String password, 
			@Param("headImage") String headImage, @Param("userInformation")String userInformation);

	User selectUserInfo(String userName);

	User selectUserInfoById(Long id);

}
