package com.ys.wg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ys.wg.dao.BlogDao;
import com.ys.wg.model.Blog;
import com.ys.wg.model.Page;
import com.ys.wg.service.BlogService;


@Service
@Transactional(rollbackFor = Exception.class)
public class BlogServiceImpl implements BlogService {
	
	
	@Resource
	private BlogDao blogDao;
	
	public boolean blogInsert(Blog blog) {
		
		return blogDao.blogInsert(blog);
	}

	public List<Blog> blogSelectByUserId(Page page, int userId) {
		
		int num = this.selectBlog(userId);
		
		page.setTotal(num);
		
		return blogDao.blogSelectByUserId(page.getStart(),page.getEnd(),userId);
	}

	private int selectBlog(int userId) {
		
		return blogDao.selectBlog(userId);
	}

}
