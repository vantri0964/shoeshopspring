package com.levantri.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.levantri.empty.User;
import com.levantri.imp.Generalimp;

@Repository
public class GeneralDao implements Generalimp {
	@Autowired
	SessionFactory sessionFactory;
	
	public GeneralDao() {
		// TODO Auto-generated constructor stub
	}
	
	@Transactional
	public User Info(int id) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from users where id = '" + id + "'";
		User user = (User) session.createQuery(sql).getSingleResult();
		return user;
	}

}
