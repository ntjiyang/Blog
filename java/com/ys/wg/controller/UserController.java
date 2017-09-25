package com.ys.wg.controller;

import com.ys.wg.model.Blog;
import com.ys.wg.model.Comment;
import com.ys.wg.model.Notification;
import com.ys.wg.model.User;
import com.ys.wg.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Controller
@RequestMapping("/user")
public class UserController {

    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;

    //用户登录
	@RequestMapping("/userLogin")
    public String userLogin(User user,HttpServletRequest request, Model model){
    	
	
        User u =userService.userLogin(user);
        
        if(u != null){
        	
        	request.setAttribute("username", user.getUserName());
        	return "foreView/userHome";
        }else{
        	  return "/index"; 
        }
    }
	
	//用户注册
	@RequestMapping("/userRegister")
	public String userRegister(User user,HttpServletRequest request, Model model){
		
		if(userService.selectUserByName(user.getUserName()) != null){
			
			model.addAttribute("msg","用户名重复！");
		}else{
		
		if(userService.insertUser(user)){
		
			return "/index";
		}
	}
		
	return "/index";
		
}
	
	//根据用户名查询个人信息
	@RequestMapping("/userSelect")
	public String userSelect(User user,HttpServletRequest request, Model model){
		
		List<User> userlist	 = 	userService.selectUserInforByName(user.getUserName());
		
		model.addAttribute("userlist", userlist);
		
		return "/updateuser";	//跳转到修改个人资料	
	}
	
	//根据用户名，修改个人信息   密码、头像、个人简介
	@RequestMapping("/userUpdate")
	public String userUpdate(User user,HttpServletRequest request, Model model){
		
		if(userService.updateUserInfor(user))
			return "/personal";  //跳转到个人中心
		
		return "/updateuser";
		
	}
	
	//用户(user_id)发布博客
	@RequestMapping("/blogInsert")
	public String blogInsert(Blog blog,HttpServletRequest request, Model model){
		
		if(userService.blogInsert(blog))
		return "自身";
	
		
		return "自身";
	}
	
	//添加回复
	@RequestMapping("/updateComment")
	public String insertComment(Comment comment, Blog blog,HttpServletRequest request, Model model, User user){
		
		if(userService.insertComment(comment))
		return "";
		
		return "";
	}
	
	//显示通知
	@RequestMapping("/selectNotification")
	public String selectNotification(Notification notification, Blog blog,HttpServletRequest request, Model model, User user){
	
		
		return "";
	
	}
	
}
