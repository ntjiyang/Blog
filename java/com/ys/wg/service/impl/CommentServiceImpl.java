package com.ys.wg.service.impl;

import javax.annotation.Resource;

import com.ys.wg.dao.CommentDao;
import com.ys.wg.model.Comment;
import com.ys.wg.service.CommentService;

public class CommentServiceImpl implements CommentService {

	@Resource
	private CommentDao commentDao;

	public boolean insertComment(Comment comment) {
		
		return commentDao.insertComment(comment);
	}
}
