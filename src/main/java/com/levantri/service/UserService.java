package com.levantri.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.levantri.dao.UserDao;
import com.levantri.empty.User;
import com.levantri.imp.UserImp;

@Service
public class UserService implements UserImp{

	@Autowired
	private UserDao userDao;
	public UserService() {
		// TODO Auto-generated constructor stub
	}

	public boolean checkEmail(String username) {
		return userDao.checkEmail(username);
	}

	public boolean createUser(User user) {
		return userDao.createUser(user);
	}

}
