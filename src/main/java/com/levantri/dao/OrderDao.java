package com.levantri.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.levantri.empty.Order;
import com.levantri.empty.OrderProduct;
import com.levantri.imp.OrderImp;

@Repository
public class OrderDao implements OrderImp {
	@Autowired
	private SessionFactory sessionFactory;
	public OrderDao() {
		// TODO Auto-generated constructor stub
	}

	@Transactional
	public int createOrder(Order order) {
		Session session = sessionFactory.getCurrentSession();
		int result = (Integer)session.save(order);
		System.out.println("result is" + result);
		return result;
	}

	@Transactional
	public boolean saveOrderProduct(OrderProduct orderProduct) {
		Session session = sessionFactory.getCurrentSession();
		session.save(orderProduct);
		return session.save(orderProduct) != null ? true : false;
	}

}
