package com.levantri.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.levantri.empty.Category;
import com.levantri.imp.CategoryImp;

@Repository
public class CategoryDao implements CategoryImp {

	@Autowired
	SessionFactory sessionFactory;
	public CategoryDao() {
		// TODO Auto-generated constructor stub
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Category> indexCategory() {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from categories where id_parent IS NULL";
		List<Category> categories = (List<Category>) session.createQuery(sql).getResultList();
		return categories;
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Category> chilrentCategory(int id) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from categories where id_parent = " + id;
		List<Category> categories = (List<Category>) session.createQuery(sql).getResultList();
		return categories;
	}

}
