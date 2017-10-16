package com.ys.wg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ys.wg.dao.FollowDao;
import com.ys.wg.model.Follow;
import com.ys.wg.model.Page;
import com.ys.wg.service.FollowService;

@Service
@Transactional(rollbackFor = Exception.class)
public class FollowServiceImpl implements FollowService {
	
	@Resource
	private FollowDao followDao;
	
	public int selectFollowerNum(int userId){
		
		return followDao.selectFollowerNum(userId);
	}

	public List<Follow> selectFollowByUserId(int userId,Page page) {
		
		int num = this.selectFollowerNum(userId);
		
		page.setTotal(num);
		page.count();
		
		if(num == 0)
			return followDao.selectFollowByUserId(userId, 0, 0);
		
		return followDao.selectFollowByUserId(userId,page.getStart(),page.getEnd());
	}

	public boolean deleteFollow(int followId , int userId) {
		
		return followDao.deleteFollow(followId,userId);
	}

}
