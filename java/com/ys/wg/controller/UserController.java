package com.ys.wg.controller;


import com.ys.wg.model.Blog;
import com.ys.wg.model.Comment;
import com.ys.wg.model.Follow;
import com.ys.wg.model.Notification;
import com.ys.wg.model.Page;
import com.ys.wg.model.Type;
import com.ys.wg.model.User;
import com.ys.wg.service.BlogService;
import com.ys.wg.service.CommentService;
import com.ys.wg.service.FollowService;
import com.ys.wg.service.NotificationService;
import com.ys.wg.service.TypeService;
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
	private CommentService commentService;
    
    @Resource
    private NotificationService notificationService;
    
    @Resource
    private BlogService blogService;
    
    @Resource
    private FollowService followService;

    @Resource
    private TypeService typeService;
    
    /*
     * 用户模块
     * 
     * */
    
    
    
    
    //用户登录
	@RequestMapping("/userLogin")
    public String userLogin(Page page,User user,HttpServletRequest request, Model model,Notification Notification){
	
        User u = userService.userLogin(user.getUserName(),user.getPassword());
   
        if(u != null){
        	
        	HttpSession session = request.getSession();
            Long userId = u.getId();
            List<Notification> ntf = notificationService.showNotificatonByTitle(userId,page);
        	session.setAttribute("username",u.getUserName());
        	session.setAttribute("userid", u.getId());
        	model.addAttribute("notificationlist", ntf);
        	
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
			
			return "/index";
		}else{
		
		if(userService.insertUser(user)){
			model.addAttribute("msg","注册成功！");
			return "/index";
		}
	}
		
	return "/index";
		
}
	
	//用户退出
	@RequestMapping("/quit")
	public String quit(HttpServletRequest request ){
		
		HttpSession session = request.getSession();
		session.removeAttribute("userid");
		
        return "index"; 
		
	}
	
	//返回个人中心
	@RequestMapping("/returnMyPage")
	public String returnMyPage(Page page,User user,HttpServletRequest request, Model model,Notification Notification){
		
		User u = userService.selectUserInfoById(user.getId());
		List<Notification> ntf = notificationService.showNotificatonByTitle(u.getId(),page);
		 
		 model.addAttribute("userName",u.getUserName());
		 model.addAttribute("id",u.getId());
		 model.addAttribute("notificationlist", ntf);
		
		return "foreView/userHome";
		
	}
	
	//根据用户名查询个人专页
	@RequestMapping("/userSelect")
	public String userSelect(Page page,Blog blog,User user,HttpServletRequest request, Model model){
		String flag = request.getParameter("flag");
		String Id   = request.getParameter("Id");
		int id = Integer.parseInt(Id);
	
		List<User> userlist	 = 	userService.selectUserInforByName(user.getUserName());
		
		model.addAttribute("userlist", userlist);
		
		if(flag.equals("selectuser")){
		
		return "foreView/personalinfo";	//跳转到个人资料	
		
		}else if(flag.equals("selectuserinfo")){			
			if(userlist.size() == 0)
				return "foreView/freeze";
			
			return "foreView/userinfo";
			
		}else if(flag.equals("charge")){
			
			User u = userService.selectUserInfo(user.getUserName());
				if(u==null){
					blog.setUserId(0);
					List<Blog> blogSeeList = blogService.blogSelectBySee(blog,page);
					List<Blog> blogList = blogService.blogSelectByUserId(blog,page);

					model.addAttribute("bloglist",blogList);
					model.addAttribute("blogseelist",blogSeeList);
				
					return "foreView/home";	
			}
			
			model.addAttribute("userName",u.getUserName());
			model.addAttribute("id",u.getId());
			model.addAttribute("u",u);
			if(id==u.getId())
				return "foreView/userHome";
			
			return "foreView/othershome";
			
		}else{
			return "foreView/updateinfo";
		}
	}
	
	//根据用户id查询主页
	@RequestMapping("/userSelectById")
	public String UserSelectById(Page page, User user,HttpServletRequest request,Model model,Notification notification){
		
		User u = userService.selectUserInfoById(user.getId());
		String userid = request.getParameter("userid");
		int id = Integer.parseInt(userid);
		
		model.addAttribute("userName",u.getUserName());
		model.addAttribute("id",u.getId());
		
		
		if(u.getId() == id){
			 List<Notification> ntf = notificationService.showNotificatonByTitle(id,page);
			 model.addAttribute("notificationlist",ntf);
			return "foreView/userHome";
		}
		return "foreView/othershome";
	}
	
	//根据用户名，修改个人信息   密码、头像、个人简介
	@RequestMapping("/userUpdate")
	public String userUpdate(User user,HttpServletRequest request, Model model){
		
		if(userService.updateUserInfor(user.getUserName(),user.getPassword(),user.getHeadImage(),user.getUserInformation())){
			
			
			
			return "foreView/personalinfo"; 
		}
		
		return "foreView/personalinfo";
		
	}
	
	
	/*
	 * 通知模块
	 * */
	
	//点击信息标题显示通知详情
	@RequestMapping("/selectNotification")
	public String selectNotification(Notification notification,HttpServletRequest request, Model model){
		
	Notification notifi = notificationService.selectNotification(notification.getNotificationId());
		
		model.addAttribute("notifi", notifi );
	
		return "foreView/notification";
	
	}
	
	//点击更多通知
	@RequestMapping("/selectMoreNotification")
	public String selectMoreNotification(Page page,Notification notification,HttpServletRequest request, Model model){
		
		List<Notification> notificationList = notificationService.showNotificatonByTitle(notification.getNotiuserId(),page);
		model.addAttribute("notificationList",notificationList);
		
		return "foreView/notificationList";
		
	}
	
	@RequestMapping("/deleteNotification")
	public String deleteNotification(Page page,Notification notification,Model model){
		
		if(notificationService.deleteNotification(notification.getNotificationId())){
			List<Notification> notificationList = notificationService.showNotificatonByTitle(notification.getNotiuserId(),page);
			model.addAttribute("notificationList",notificationList);
		
			return "foreView/notificationList";
		}
		
		return "foreView/error";
		
	}
	
	/*
	 * 
	 * 回复模块
	 * */
	
	//添加回复
	@RequestMapping("/insertComment")
	public String insertComment(Page page,Comment comment, Blog blog,HttpServletRequest request, Model model, User user){
		
		if(commentService.insertComment(comment)){
		
		List<Blog> bloglist = blogService.selectblogByBlogId(blog);
		List<Comment> commentlist = commentService.selectCommentByBlogId(comment,page);
		
		model.addAttribute("bloglist",bloglist);
		model.addAttribute("commentlist",commentlist);
		
		return "foreView/concrete";			
		
		}else{
			return "foreView/main";
		}
	}
	

	/*
	 * 博客模块
	 * 
	 * 
	 * */
	
	//标题搜索blog
	@RequestMapping("/searchBlogByTitle")
	public String blogInsert(Blog blog,Model model,Page page){
		
		List<Blog> bloglist = blogService.searchBlogByTitle(blog.getBlogTitle(),page);
		
			if(bloglist.size()==0)
				return "foreView/searchError";
		
			model.addAttribute("bloglist",bloglist);
			model.addAttribute("blogTitle",blog.getBlogTitle());
			return "foreView/searchBlog";
		}
	
	
	
	//用户(user_id)发布博客
	@RequestMapping("/blogInsert")
	public String blogInsert(Page page,Blog blog,HttpServletRequest request, Model model){
		
			if(blogService.blogInsert(blog)){
				List<Blog> bloglist = blogService.blogSelectByUserId(blog, page);
				if(bloglist.size()==0)
					return "foreView/addBlogSuccess";
				
				model.addAttribute("bloglist",bloglist);
				return "foreView/main";
			}
				return "foreView/addblog";
			
	}
	
	//显示用户博客
	@RequestMapping("/blogSelectByUserId")
	public String blogSelectByUserId( Type type, Page page,Blog blog,HttpServletRequest request, Model model){
		
		String flag = request.getParameter("flag");
	
	//主页显示blog
		if(flag.equals("title")){
			if(blog.getUserId() == 0){	
				List<Blog> blogSeeList = blogService.blogSelectBySee(blog,page);
				List<Blog> blogList = blogService.blogSelectByUserId(blog,page);

				model.addAttribute("bloglist",blogList);
				model.addAttribute("blogseelist",blogSeeList);
				
				
					HttpSession session = request.getSession();
					session.setAttribute("userid", 0);
			}else{
				blog.setUserId(0);
				List<Blog> blogSeeList = blogService.blogSelectBySee(blog,page);
				List<Blog> blogList = blogService.blogSelectByUserId(blog,page);

				model.addAttribute("bloglist",blogList);
				model.addAttribute("blogseelist",blogSeeList);
				
			}
				return "foreView/home";			
			
		}else{
		
		//自己主页的blog
		if(blog.getUserId() == 0){
			List<Blog> blogList = blogService.blogSelectByUserId(blog,page);
	
	
			model.addAttribute("bloglist",blogList);
			model.addAttribute("blogUserId",blog.getUserId());
			return "foreView/main";	
			
		}else{
		
		//其他主页的Blog
		List<Blog> blogList = blogService.blogSelectByUserId(blog,page);
		
		if(blogList.size() == 0)
			return "foreView/blank";
		
		model.addAttribute("bloglist",blogList);
		model.addAttribute("blogUserId",blog.getUserId());
		return "foreView/main";	
		}
	}
		
		
}
	
	/*
	 * 显示详细博客内容、回复
	 * */
	@RequestMapping("/selectblogByBlogId")
	public String selectblogByBlogId(Page page, Blog blog,Comment comment,HttpServletRequest request, Model model){
		
		if(blog.getUserId()==0)
			return "foreView/error";
		
		
		String otherId = request.getParameter("otherId");		
		int otherid = Integer.parseInt(otherId);
		
		if(otherid != blog.getUserId())
			blogService.updateSeeCount(blog);			
		
		
		List<Blog> bloglist = blogService.selectblogByBlogId(blog);
		List<Comment> commentlist = commentService.selectCommentByBlogId(comment,page);
		
		model.addAttribute("bloglist",bloglist);
		model.addAttribute("commentlist",commentlist);
		return "foreView/concrete";
		
	}
	
	@RequestMapping("/selectBlogByType")
	public String selectBlogByType(Page page, Type type,Blog blog,Comment comment,HttpServletRequest request,Model model){
		
		
		Type typeName = typeService.selectTypeName(blog.getType()); 
		List<Blog> bloglist = blogService.selectBlogByType(blog,page);
		
		System.out.println("TypeNum"+blog.getType());
	
		model.addAttribute("bloglist",bloglist);
		model.addAttribute("typeName",typeName.getTypeName());
		model.addAttribute("type",blog.getType());
		
		return "foreView/typeMain";
	}
	
	/*
	 * 
	 * 关注模块
	 * 
	 * */
	
	@RequestMapping("/selectFollowByUserId")
	public String selectFollowByUserId(Page page,Follow follow,HttpServletRequest request,Model model){
		
		List<Follow> followlist = followService.selectFollowByUserId(follow.getUserId(),page);
		
		model.addAttribute("followlist",followlist);
		
		return "foreView/followList";
	}
	
	@RequestMapping("/deleteFollow")
	public String deleteFollow(Follow follow,Model model,Page page){
		
		if(followService.deleteFollow(follow.getFollowId(),follow.getUserId())){
			List<Follow> followlist = followService.selectFollowByUserId(follow.getUserId(),page);
			
			model.addAttribute("followlist",followlist);
			
			return "foreView/followList";
		}
		return "foreView/error";
		
		
	}
	
	@RequestMapping("/insertFollow")
	public String insertFollow(Follow follow,HttpServletRequest request){
		
		if(followService.selectFollow(follow.getUserId(),follow.getFollowId())==null){
			followService.insertFollow(follow.getUserId(),follow.getFollowId(),follow.getFollowUserName());
		
			return "foreView/followSuccess";
		}else{
			
			return "foreView/followerror";
		}
	}
}
