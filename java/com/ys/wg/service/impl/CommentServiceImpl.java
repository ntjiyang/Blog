package com.ys.wg.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ys.wg.dao.CommentDao;
import com.ys.wg.model.Comment;
import com.ys.wg.service.CommentService;

@Service
@Transactional(rollbackFor = Exception.class)
public class CommentServiceImpl implements CommentService {

	@Resource
	private CommentDao commentDao;

	public boolean insertComment(Comment comment) {
		
		return commentDao.insertComment(comment);
	}
}
