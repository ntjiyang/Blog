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

	public int selectBlogNum(Blog blog) {

		return blogDao.selectBlogNum(blog);

	}

	public List<Blog> blogSelectByUserId(Blog blog, Page page) {

		int num = this.selectBlogNum(blog);

		page.setTotal(num);
		page.count();

		if (num == 0)
			return blogDao.blogSelectByUserId(blog.getUserId(), 0, 0);

		List<Blog> bloglist = blogDao.blogSelectByUserId(blog.getUserId(),
				page.getStart(), page.getEnd());
		return bloglist;
	}

	public List<Blog> selectblogByBlogId(Blog blog) {

		return blogDao.selectblogByBlogId(blog);
	}

	public int selectBlogNumByType(Blog blog) {

		return blogDao.selectBlogNumByType(blog);

	}

	public List<Blog> selectBlogByType(Blog blog, Page page) {
		int num = this.selectBlogNumByType(blog);
		page.setTotal(num);
		page.count();

		if (num == 0)
			return blogDao.selectBlogByType(blog.getType(), 0, 0);

		List<Blog> bloglist = blogDao.selectBlogByType(blog.getType(),
				page.getStart(), page.getEnd());
		return bloglist;

	}

	public boolean updateSeeCount(Blog blog) {

		return blogDao.updateSeeCount(blog);
	}

	public int selectBlogNumByCheck(int check) {

		return blogDao.selectBlogNumByCheck(check);

	}

	public List<Blog> selectBlogByCheck(int check, Page page) {
		int num = this.selectBlogNumByCheck(check);
		page.setTotal(num);
		page.count();

		if (num == 0) {
			return blogDao.selectBlogByCheck(check, 0, 0);
		}

		List<Blog> bloglist = blogDao.selectBlogByCheck(check, page.getStart(),
				page.getEnd());
		return bloglist;
	}

	public List<Blog> blogSelectBySee(Blog blog,Page page) {
		int num = this.selectBlogNum(blog);
		page.setTotal(num);
		page.count();
		List<Blog> blogSeeList = blogDao.blogSeeList(page.getStart(),page.getEnd());
		return blogSeeList;
	}
}
