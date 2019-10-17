package com.levantri.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.levantri.dao.OrderDao;
import com.levantri.dao.UserDao;
import com.levantri.empty.Order;
import com.levantri.empty.OrderProduct;
import com.levantri.imp.OrderImp;

@Service
public class OrderService implements OrderImp {
	@Autowired
	private OrderDao orderDao;
	public OrderService() {
		// TODO Auto-generated constructor stub
	}

	public int createOrder(Order order) {	
//		try {
//			return orderDao.createOrder(order);
//		} catch (Exception e) {
//			return null;
//		}
		return orderDao.createOrder(order);
		
	}

	public boolean saveOrderProduct(OrderProduct orderProduct) {
		return orderDao.saveOrderProduct(orderProduct);
	}

}
