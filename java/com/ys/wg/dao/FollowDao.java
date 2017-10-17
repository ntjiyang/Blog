package com.ys.wg.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ys.wg.model.Follow;

@Repository
public interface FollowDao {

	List<Follow> selectFollowByUserId(@Param ("userId")int userId,@Param("start") int start, @Param("end") int end);

	int selectFollowerNum(int userId);

	boolean deleteFollow(@Param ("followId")int followId,@Param("userId")int userId);

	boolean insertFollow(@Param ("userId")int userId, @Param("followId")int followId, @Param("followUserName")String followUserName);

	Follow selectFollow(@Param("userId")int userId, @Param("followId")int followId);

}
