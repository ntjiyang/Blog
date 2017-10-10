package com.ys.wg.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ys.wg.model.Comment;

@Repository
public interface CommentDao {

	boolean insertComment(Comment comment);

	List<Comment> selectCommentByBlogId(Comment comment);

	int selectCommentById(int blogId);

}
