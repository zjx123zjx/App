package cn.itcast.wdkj.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.itcast.nsfw.user.entity.User;
import cn.itcast.wdkj.dao.UserDao;
import cn.itcast.wdkj.service.UserService;
import cn.itcast.zxxx.entity.Course;



@Service("userService1")
public class UserServiceImpl implements UserService {
	
	private UserDao userDao1;
	@Resource
	public void setUserDao1(UserDao userDao1) {
		this.userDao1 = userDao1;
	}

	public User Myself(User user){
		user = userDao1.Myself(user);
		return user;
	}

	@Override
	public ArrayList<Course> bjList() {
		// TODO Auto-generated method stub
		ArrayList<Course>list = userDao1.bjList();
		return list;
	}

	@Override
	public String bj(String id) {
		// TODO Auto-generated method stub
		String s = userDao1.bj(id);
		return s;
	}

	@Override
	public void save(String newStr, String oldStr) {
		// TODO Auto-generated method stub
		userDao1.save(newStr,oldStr);
	}
	
}
