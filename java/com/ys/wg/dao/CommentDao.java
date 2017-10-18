package com.ys.wg.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ys.wg.model.Comment;

@Repository
public interface CommentDao {

	boolean insertComment(Comment comment);

	int selectCommentById(int blogId);

	int selectcommentByBlogIdNum(int blogId);

	List<Comment> selectCommentByBlogId(@Param("blogId")int blogId,@Param("start") int start, @Param("end")int end);

}
