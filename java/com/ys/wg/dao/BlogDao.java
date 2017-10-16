package com.ys.wg.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ys.wg.model.Blog;

@Repository
public interface BlogDao {

	boolean blogInsert(Blog blog);

	int selectBlogNum(Blog blog);

	List<Blog> blogSelectByUserId(@Param("userId") int userId,
			@Param("start") int start, @Param("end") int end);

	List<Blog> selectblogByBlogId(Blog blog);

	List<Blog> selectBlogByType(Blog blog);

	int selectBlogNumByType(Blog blog);

	List<Blog> selectBlogByType(@Param("type") int type,
			@Param("start") int start, @Param("end") int end);

	boolean updateSeeCount(Blog blog);

	int selectBlogNumByCheck(int check);

	List<Blog> selectBlogByCheck(@Param("check") int check,
			@Param("start") int start, @Param("end") int end);

	List<Blog> blogSeeList(@Param("start") int start, @Param("end") int end);

	boolean updateCheck(int id);

	boolean updateStatus(int id);

}
