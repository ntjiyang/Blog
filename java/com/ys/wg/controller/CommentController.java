package com.ys.wg.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ys.wg.model.Blog;
import com.ys.wg.model.Comment;
import com.ys.wg.model.User;
import com.ys.wg.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {

	@Resource
	private CommentService commentService;
	
	
	//添加回复
	@RequestMapping("/updateComment")
	public String insertComment(Comment comment, Blog blog,HttpServletRequest request, Model model, User user){
		
		if(commentService.insertComment(comment))
		return "";
		
		return "";
	}
}
