package com.levantri.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.levantri.empty.Color;
import com.levantri.imp.ColorImp;

@Repository
public class ColorDao implements ColorImp{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public ColorDao() {
		// TODO Auto-generated constructor stub
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Color> indexColor(int id) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "select distinct c from colors c join product_details d on c.id = d.id_color where d.id_product = "+id;
		return session.createQuery(sql).getResultList();
	}

}
