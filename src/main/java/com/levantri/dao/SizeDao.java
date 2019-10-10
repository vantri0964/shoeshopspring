package com.levantri.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.levantri.empty.ProductDetail;
import com.levantri.empty.Size;
import com.levantri.imp.SizeImp;

@Repository
public class SizeDao implements SizeImp {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public SizeDao() {
		// TODO Auto-generated constructor stub
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Size> indexSize(int id) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "select distinct s from sizes s join product_details d on s.id = d.id_size where d.id_product = " + id;
		List<Size> sizes = session.createQuery(sql).getResultList();
		return sizes;
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<ProductDetail> indexSize(int id_size, int id_product) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("id size is" + id_size + " - " + id_product);
		String sql = "from product_details " + "where id_product = " + id_product + " and id_size = " + id_size;
		return session.createQuery(sql).getResultList();
	}
	
	
}
