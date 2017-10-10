package com.ys.wg.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ys.wg.model.Blog;
import com.ys.wg.model.Page;


@Repository
public interface BlogDao {

	boolean blogInsert(Blog blog);

	int selectBlogNum(Blog blog);

	List<Blog> blogSelectByUserId(@Param("userId")int userId,@Param("start") int start,@Param("end") int end);

	List<Blog> selectblogByBlogId(Blog blog);

}
