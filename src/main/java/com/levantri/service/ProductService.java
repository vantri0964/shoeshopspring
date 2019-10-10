package com.levantri.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.levantri.dao.ProductDao;
import com.levantri.empty.Product;
import com.levantri.imp.ProductImp;

@Service
public class ProductService implements ProductImp {
	
	@Autowired
	ProductDao productDao;
	
	public ProductService() {
		// TODO Auto-generated constructor stub
	}

	public List<Product> index(int start, int total) {
		return productDao.index(start, total);
	}

	public Product show(int id) {	
		try {
			return productDao.show(id);
		} catch (Exception e) {
			return null;
		}
		
	}

}
