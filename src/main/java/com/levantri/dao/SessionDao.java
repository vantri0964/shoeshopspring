package com.levantri.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.levantri.empty.User;
import com.levantri.imp.SessionImp;

@Repository
public class SessionDao implements SessionImp {
	@Autowired
	SessionFactory sessionFactory;
	public SessionDao() {
		// TODO Auto-generated constructor stub
	}
	
	@Transactional
	public User login(User user) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from users where email ='" + user.getUsername() + "' and password = '" + user.getPassword() + "'";
		User userList = (User) session.createQuery(sql).uniqueResult();
		return userList;
	}

}
