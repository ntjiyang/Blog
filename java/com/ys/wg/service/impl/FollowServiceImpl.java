package com.ys.wg.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ys.wg.dao.FollowDao;
import com.ys.wg.service.FollowService;

@Service
@Transactional(rollbackFor = Exception.class)
public class FollowServiceImpl implements FollowService {
	
	@Resource
	private FollowDao followDao;

}
