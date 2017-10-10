package com.ys.wg.service.impl;

import java.util.List;

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
	
	private int selectcommentById(int blogId) {
		
		return commentDao.selectCommentById(blogId);
	}

	public boolean insertComment(Comment comment) {
		
		int num = selectcommentById(comment.getBlogId());
		comment.setNum(num+1);
		return commentDao.insertComment(comment);
	}

	

	public List<Comment> selectCommentByBlogId(Comment comment) {
		
		return commentDao.selectCommentByBlogId(comment);
	}
}
