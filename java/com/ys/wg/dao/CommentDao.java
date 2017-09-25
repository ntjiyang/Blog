package com.ys.wg.dao;

import org.springframework.stereotype.Repository;

import com.ys.wg.model.Comment;

@Repository
public interface CommentDao {

	boolean insertComment(Comment comment);

}
