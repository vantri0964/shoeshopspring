package com.levantri.imp;

import com.levantri.empty.Order;
import com.levantri.empty.OrderProduct;

public interface OrderImp {
	public int createOrder(Order order);
	public boolean saveOrderProduct(OrderProduct orderProduct);
}
