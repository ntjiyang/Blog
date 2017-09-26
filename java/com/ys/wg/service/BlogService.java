package com.ys.wg.service;

import java.util.List;

import com.ys.wg.model.Blog;
import com.ys.wg.model.Page;

public interface BlogService {

	
	boolean blogInsert(Blog blog);

	List<Blog> blogSelectByUserId(Page page, int userId);
}
