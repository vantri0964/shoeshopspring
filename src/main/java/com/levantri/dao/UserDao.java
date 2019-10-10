package com.levantri.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.levantri.empty.User;
import com.levantri.imp.UserImp;

@Repository
public class UserDao implements UserImp{

	@Autowired
	SessionFactory sessionFactory;
	public UserDao() {
		// TODO Auto-generated constructor stub
	}
	
	@Transactional
	public boolean checkEmail(String username) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from users where email = '" + username + "'";
		int result = session.createQuery(sql).getResultList().size();
		return result != 0 ? true : false;
	}

	@Transactional
	public boolean createUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		int result = (Integer) session.save(user);
		return result > 0 ? true : false;
	}

}
