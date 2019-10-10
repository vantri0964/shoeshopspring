package com.levantri.imp;

import java.util.List;

import com.levantri.empty.ProductDetail;
import com.levantri.empty.Size;

public interface SizeImp {
	public List<Size> indexSize(int id);
	public List<ProductDetail> indexSize(int id_size, int id_product);
}
