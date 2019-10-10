package com.levantri.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.levantri.dao.GeneralDao;
import com.levantri.empty.User;
import com.levantri.imp.Generalimp;

@Service
public class GeneralService implements Generalimp{

	@Autowired
	GeneralDao generalDao;
	public GeneralService() {
		// TODO Auto-generated constructor stub
	}

	public User Info(int id) {
		return generalDao.Info(id);
	}

}
