package com.levantri.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.levantri.empty.Bank;
import com.levantri.imp.BankImp;

@Repository
public class BankDao implements BankImp {
	@Autowired
	private SessionFactory sessionFactory;
	public BankDao() {
		// TODO Auto-generated constructor stub
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Bank> indexBank() {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from banks";
		return session.createQuery(sql).getResultList();
	}

}
