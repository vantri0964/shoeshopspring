package com.levantri.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.levantri.dao.SessionDao;
import com.levantri.empty.User;
import com.levantri.imp.SessionImp;

@Service
public class SessionService implements SessionImp{
	@Autowired
	SessionDao sessionDao;
	public SessionService() {
		// TODO Auto-generated constructor stub
	}
	public User login(User user) {
		
		return sessionDao.login(user);
	}

}
