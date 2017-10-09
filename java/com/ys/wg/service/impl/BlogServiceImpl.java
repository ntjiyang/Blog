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
	
	public int selectBlogNum(Blog blog){
		
		return blogDao.selectBlogNum(blog);
		
	}

	public List<Blog> blogSelectByUserId(Blog blog) {
		
		int num = this.selectBlogNum(blog);
		
		blog.setBlogtotal(num);
		blog.count();
		
		List<Blog> bloglist = blogDao.blogSelectByUserId(blog);
		
		return bloglist;
	}

	public List<Blog> blogNew() {
		
		return blogDao.blogNew();
	}

}
