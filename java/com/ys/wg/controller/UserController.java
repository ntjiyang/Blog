package com.ys.wg.controller;


import com.ys.wg.model.Notification;
import com.ys.wg.model.User;
import com.ys.wg.service.NotificationService;
import com.ys.wg.service.UserService;
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
@RequestMapping("/user")
public class UserController {

    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;
    
    @Resource
    private NotificationService notificationService;

    //用户登录
	@RequestMapping("/userLogin")
    public String userLogin(User user,HttpServletRequest request, Model model,Notification Notification){
    	
	
        User u = userService.userLogin(user);
        Long userId = u.getId();
        List<Notification> ntf = notificationService.showNotificatonByTitle(userId);
        
        if(u != null){
        	
        	HttpSession session = request.getSession();
        	
        	session.setAttribute("username",u.getUserName());
        	session.setAttribute("id", u.getId());
        	session.setAttribute("notificationlist", ntf);
        	
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
		String flag = request.getParameter("flag");
		
		List<User> userlist	 = 	userService.selectUserInforByName(user);
		
		model.addAttribute("userlist", userlist);
		
		if(flag.equals("selectuser")){
		
		return "foreView/personalinfo";	//跳转到个人资料	
		}else if(flag.equals("selectuserinfo")){
			return "foreView/userinfo";
			
		}else{
			return "foreView/updateinfo";
		}
	}
	
	//根据用户名，修改个人信息   密码、头像、个人简介
	@RequestMapping("/userUpdate")
	public String userUpdate(User user,HttpServletRequest request, Model model){
		
		
		if(userService.updateUserInfor(user.getUserName(),user.getPassword(),user.getHeadImage(),user.getUserInformation())){
			
			return "foreView/main";  //跳转到个人中心
		}
		
		return "foreView/personalinfo";
		
	}
	
	
}
