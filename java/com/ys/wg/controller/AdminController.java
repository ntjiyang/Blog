package com.ys.wg.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ys.wg.model.Admin;
import com.ys.wg.model.Blog;
import com.ys.wg.model.Comment;
import com.ys.wg.model.Notification;
import com.ys.wg.model.Page;
import com.ys.wg.model.User;
import com.ys.wg.service.AdminService;
import com.ys.wg.service.BlogService;
import com.ys.wg.service.CommentService;
import com.ys.wg.service.NotificationService;
import com.ys.wg.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private Logger log = Logger.getLogger(AdminController.class);

	@Resource
	private AdminService adminService;

	@Resource
	private NotificationService notificationService;

	@Resource
	private UserService userService;

	@Resource
	private BlogService blogService;

	@Resource
	private CommentService commentService;

	@RequestMapping("/adminLogin")
	public String userLogin(Admin admin, HttpServletRequest request, Model model) {

		Admin a = adminService.adminLogin(admin);

		if (a != null) {
			HttpSession session = request.getSession();

			session.setAttribute("adminname", a.getAdminName());
			session.setAttribute("adminpower", a.getAdminPower());

			return "backView/adminHome";
		} else {
			return "backView/adminLogin";
		}
	}

	@RequestMapping("/adminLogout")
	public String adminLogout(HttpServletRequest request) {

		request.getSession().invalidate();
		return "backView/adminLogin";
	}

	// 根据用户名查询个人信息
	@RequestMapping("/adminSelect")
	public String adminSelect(User user, Admin admin,
			HttpServletRequest request, Model model) {

		List<User> userlist = userService.selectUserInforListByName(user);
		List<Admin> adminlist = adminService.selectAdminInforByName(admin);

		model.addAttribute("userlist", userlist);
		model.addAttribute("adminlist", adminlist);
		model.addAttribute("user", user);
		model.addAttribute("admin", admin);

		return "backView/adminright";
	}

	// 详细信息
	@RequestMapping("/adminDetail")
	public String adminDetail(User user, Admin admin,
			HttpServletRequest request, Model model) {
		String flag = request.getParameter("flag");

		if (flag.equals("user")) {
			User u = userService.selectUserInforById(user.getId());
			model.addAttribute("u", u);
		} else if (flag.equals("admin")) {
			Admin a = adminService.selectAdminInforById(admin.getAdminId());
			model.addAttribute("a", a);
		}

		model.addAttribute("flag", flag);

		return "backView/detailinfo";
	}

	// 添加管理员
	@RequestMapping("/adminAdd")
	public String adminAdd(Admin admin, HttpServletRequest request, Model model) {
		System.out.println(admin);

		if (adminService.insertAdmin(admin)) {

			return "redirect:/admin/selectBlogByCheck?check=1";
		}

		return "backView/adminAdd";

	}

	// 修改信息
	@RequestMapping("/adminUpdate")
	public String adminUpdate(Admin admin, HttpServletRequest request,
			Model model) {

		if (adminService.updateAdminPower(admin.getAdminId(),
				admin.getAdminPower())) {

			return "redirect:/admin/selectBlogByCheck?check=1";
		}

		return "backView/adminHome";

	}

	// 添加通知
	@RequestMapping("/addNotification")
	public String addNotification(User user, Notification notification,
			HttpServletRequest request, Model model) {
		String flag = request.getParameter("flag");

		if (flag.equals("skip")) {
			model.addAttribute("User", user);
			return "backView/addnotification";
		} else if (flag.equals("add")) {

			List<User> userlist = userService.selectUserInforByName(user
					.getUserName());
			for (User u : userlist) {
				notification.setNotiuserId(u.getId());
			}

			if (notificationService.addNotification(notification)) {
				return "redirect:/admin/selectBlogByCheck?check=1";
			}
		}
		return "backView/main";
	}

	// 显示博客
	@RequestMapping("/selectBlogByCheck")
	public String selectBlogByCheck(Page page, Blog blog, Model model) {

		List<Blog> blogList = blogService.selectBlogByCheck(blog.getCheck(),
				page);

		model.addAttribute("bloglist", blogList);
		model.addAttribute("check", blog.getCheck());

		return "backView/main";

	}

	// 显示详细博客内容、回复

	@RequestMapping("/selectBlogInfoByBlogId")
	public String selectBlogInfoByBlogId(Page page, Blog blog, Comment comment,
			HttpServletRequest request, Model model) {

		List<Blog> bloglist = blogService.selectblogByBlogId(blog);
		List<Comment> commentlist = commentService.selectCommentByBlogId(
				comment, page);

		model.addAttribute("bloglist", bloglist);
		model.addAttribute("commentlist", commentlist);
		return "backView/blogInfo";

	}

	// 修改博客信息
	@RequestMapping("/blogUpdate")
	public String blogUpdate(Blog blog, Page page, HttpServletRequest request,
			Model model) {
		String flag = request.getParameter("flag");

		if (flag.equals("check")) {
			if (blogService.updateCheck(blog.getId())) {

				return "redirect:/admin/selectBlogByCheck?check="
						+ blog.getCheck() + "&currentPage="
						+ page.getCurrentPage() + "";
			}
		} else if (flag.equals("status")) {
			if (blogService.updateStatus(blog.getId())) {

				return "redirect:/admin/selectBlogByCheck?check="
						+ blog.getCheck() + "&currentPage="
						+ page.getCurrentPage() + "";
			}
		}

		return "backView/adminHome";

	}

	// 删除回复
	@RequestMapping("/commentDelete")
	public String commentDelete(Page page, HttpServletRequest request,
			Model model) {
		int id = Integer.parseInt(request.getParameter("id"));
		int blogid = Integer.parseInt(request.getParameter("blogid"));
		System.out.println();
			if (commentService.deleteComment(id)) {

				return "redirect:/admin/selectBlogInfoByBlogId?id="
						+ blogid + "&blogId="+blogid+"&currentPage="
						+ page.getCurrentPage() + "";
			}
		return "backView/adminHome";

	}

	// 冻结用户
	@RequestMapping("/userIsDelete")
	public String userIsDelete(User user, HttpServletRequest request,
			Model model) {

		if (userService.updateUserIsDelete(user)) {

			return "redirect:/admin/adminDetail?id=" + user.getId()
					+ "&flag=user";
		}

		return "backView/adminHome";

	}
}
