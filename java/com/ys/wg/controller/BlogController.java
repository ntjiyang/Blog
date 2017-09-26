package com.ys.wg.controller;

import com.ys.wg.model.Blog;
import com.ys.wg.model.Comment;
import com.ys.wg.model.Notification;
import com.ys.wg.model.Page;
import com.ys.wg.model.User;
import com.ys.wg.service.BlogService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Controller
@RequestMapping("/blog")
public class BlogController {
   
	private Logger log = Logger.getLogger(UserController.class);
    
    @Resource
    private BlogService blogService;
   

	//用户(user_id)发布博客
	@RequestMapping("/blogInsert")
	public String blogInsert(Blog blog,HttpServletRequest request, Model model){
		
		if(blogService.blogInsert(blog))
		return "自身";
	
		
		return "自身";
	}
	
	//显示用户自己的博客
	@RequestMapping("/blogSelectByUserId")
	public String blogSelectByUserId(Page page, Blog blog,HttpServletRequest request, Model model){
		
		if(page == null)
			page = new Page();
		
		List<Blog> blogList = blogService.blogSelectByUserId(page,blog.getUserId());
		
		model.addAttribute("bloglist",blogList);
		
		return "";
		
	}
    
}
