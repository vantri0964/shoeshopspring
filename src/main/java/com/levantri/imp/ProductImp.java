package com.levantri.imp;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.levantri.empty.Product;
import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

public interface ProductImp {
	public List<Product> index(int start, int total);
	public Product show(int id);
	public List<Product> listProduct(ArrayList<Integer> ids);
}
