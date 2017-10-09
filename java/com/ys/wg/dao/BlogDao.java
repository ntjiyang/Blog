package com.ys.wg.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ys.wg.model.Blog;


@Repository
public interface BlogDao {

	boolean blogInsert(Blog blog);

	List<Blog> blogSelectByUserId(@Param("start")int start, @Param("end")int end, @Param("userId")int userId);

	int selectBlog(int userId);

	List<Blog> blogNew();

}
