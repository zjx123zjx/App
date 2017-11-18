package cn.itcast.wdkj.dao.impl;

import java.util.ArrayList;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.nsfw.user.entity.User;
import cn.itcast.wdkj.dao.UserDao;
import cn.itcast.zxxx.entity.Course;



public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public User Myself(User user) {
		// TODO Auto-generated method stub
		String hql = "FROM User WHERE account = ?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, user.getAccount());
		user = (User) query.uniqueResult();
		return user;
	}

	@Override
	public ArrayList<Course> bjList() {
		// TODO Auto-generated method stub
		String hql = "from Course";
		Query query = getSession().createQuery(hql);
		ArrayList<Course> list = (ArrayList<Course>) query.list();
		return list;
	}

	@Override
	public String bj(String id) {
		// TODO Auto-generated method stub
		String hql = "from Course where id1 = ?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, id);
		Course c = (Course) query.uniqueResult();
		return c.getContent1();
	}

	@Override
	public void save(String newStr, String oldStr) {
		// TODO Auto-generated method stub
		String hql = "update Course set content1 = ? where content1 = ?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, newStr);
		query.setParameter(1, oldStr);
		int i = query.executeUpdate();
		System.out.println(i+"================");
	}

	
}
