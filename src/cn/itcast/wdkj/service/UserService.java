package cn.itcast.wdkj.service;

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletOutputStream;

import cn.itcast.core.exception.ServiceException;
import cn.itcast.core.service.BaseService;
import cn.itcast.nsfw.user.entity.User;
import cn.itcast.nsfw.user.entity.UserRole;
import cn.itcast.zxxx.entity.Course;

public interface UserService{

	public User Myself(User user);

	public ArrayList<Course> bjList();

	public String bj(String id);

	public void save(String newStr, String oldStr);

}
