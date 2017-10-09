package com.ys.wg.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ys.wg.model.Blog;


@Repository
public interface BlogDao {

	boolean blogInsert(Blog blog);

	List<Blog> blogNew();

	int selectBlogNum(Blog blog);

	List<Blog> blogSelectByUserId(Blog blog);

}
