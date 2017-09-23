package com.ys.wg.dao;

import org.springframework.stereotype.Repository;

import com.ys.wg.model.Blog;

@Repository
public interface BlogDao {

	boolean blogInsert(Blog blog);

}
