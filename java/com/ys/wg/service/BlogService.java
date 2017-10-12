package com.ys.wg.service;

import java.util.List;

import com.ys.wg.model.Blog;
import com.ys.wg.model.Page;

public interface BlogService {

	
	boolean blogInsert(Blog blog);

	List<Blog> blogSelectByUserId(Blog blog,Page page);

	List<Blog> selectblogByBlogId(Blog blog);

	List<Blog> selectBlogByType(Blog blog,Page page);




}
