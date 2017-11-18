package cn.itcast.wdkj.action;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.itcast.core.action.BaseAction;
import cn.itcast.nsfw.user.entity.User;
import cn.itcast.util.Util;
import cn.itcast.wdkj.service.UserService;
import cn.itcast.zxxx.entity.Course;

public class Action extends BaseAction {
	private User user;
	@Resource
	private UserService userService1;
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	
	public String left(){
		return "left";
	}
	
	public String top(){
		return "top";
	}
	
	
	public String frame(){
		return "frame"; 
	}
	/*
	public String Myself(){
		user = (User) session.getAttribute("user");
		user = userService1.Myself(user);
		session.setAttribute("u", user);
		return "Myself";
	}
	
	public String MyCourse(){
		return "MyCourse";
	}
	*/
	public String bjList(){
		ArrayList<Course> list = userService1.bjList();
		session.setAttribute("list", list);
		return "bjList";
	}
	
	public String bj(){
		String id = request.getParameter("id");
		String s = userService1.bj(id);
		session.setAttribute("s", s);
		return "bj";
	}
	
	public void save(){
		String newStr = request.getParameter("fckContent");
		newStr = Util.convert(newStr);
		String oldStr = (String) session.getAttribute("s");
		userService1.save(newStr,oldStr);
	}
	
}
