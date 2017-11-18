package cn.itcast.wdkj.dao;

import java.util.ArrayList;

import cn.itcast.core.dao.BaseDao;
import cn.itcast.nsfw.user.entity.User;
import cn.itcast.zxxx.entity.Course;

public interface UserDao {

	User Myself(User user);

	ArrayList<Course> bjList();

	String bj(String id);

	void save(String newStr, String oldStr);

}
