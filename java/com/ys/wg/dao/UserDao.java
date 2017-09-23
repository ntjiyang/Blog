package com.ys.wg.dao;

import com.ys.wg.model.Blog;
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

	User userLogin(User user);

	User selectUserByName(String userName);

	boolean insertUser(User user);

	List<User> selectUserInforByName(String userName);

	boolean updateUserInfor(User user);

}
