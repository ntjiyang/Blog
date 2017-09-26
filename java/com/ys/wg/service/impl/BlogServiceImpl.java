package com.ys.wg.service.impl;

import javax.annotation.Resource;

import com.ys.wg.dao.BlogDao;
import com.ys.wg.model.Blog;
import com.ys.wg.service.BlogService;

public class BlogServiceImpl implements BlogService {
	
	
	@Resource
	private BlogDao blogDao;
	
	public boolean blogInsert(Blog blog) {
		
		return blogDao.blogInsert(blog);
	}

}
