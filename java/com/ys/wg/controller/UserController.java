package com.ys.wg.controller;

import com.ys.wg.model.User;
import com.ys.wg.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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

	@RequestMapping("/userLogin")
    public String userLogin(User user,HttpServletRequest request, Model model){
    	
	
        User u = userService.userLogin(user);
        
        if(u != null){
        	return "foreView/userHome";
        }else{
        	  return "/index"; 
        }
    }
	
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
	
	
}
