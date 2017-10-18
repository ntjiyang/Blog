package com.ys.wg.service;

import java.util.List;

import com.ys.wg.model.Comment;
import com.ys.wg.model.Page;

public interface CommentService {

	boolean insertComment(Comment comment);

	List<Comment> selectCommentByBlogId(Comment comment, Page page);
}
