package com.levantri.imp;

import java.util.List;

import com.levantri.empty.Product;

public interface ProductImp {
	public List<Product> index(int start, int total);
	public Product show(int id);
}
