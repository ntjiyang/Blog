package com.ys.wg.service;

import java.util.List;

import com.ys.wg.model.Follow;
import com.ys.wg.model.Page;

public interface FollowService {

	List<Follow> selectFollowByUserId(int userId, Page page);

	boolean deleteFollow(int followId,int userId);

}
