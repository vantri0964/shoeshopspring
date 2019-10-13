package com.levantri.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.levantri.empty.Product;
import com.levantri.imp.ProductImp;
import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

@Repository
public class ProductDao implements ProductImp {
	@Autowired
	SessionFactory sessionFactory;
	public ProductDao() {
		// TODO Auto-generated constructor stub
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Product> index(int start, int total) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from products";
		List<Product> products = session.createQuery(sql).setFirstResult(start).setMaxResults(total).getResultList();
		return products;
	}
	
	@Transactional
	public Product show(int id) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from products pr where pr.id = " + id + "";
		Product product = (Product) session.createQuery(sql).getSingleResult();
		return product;
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Product> listProduct(ArrayList<Integer> ids) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from products p where p.id IN :ids";
		List<Product> products = session.createQuery(sql).setParameter("ids", ids).getResultList();
		return products;
	}
}
