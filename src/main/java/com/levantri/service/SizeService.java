package com.levantri.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.levantri.dao.SizeDao;
import com.levantri.empty.ProductDetail;
import com.levantri.empty.Size;
import com.levantri.imp.SizeImp;

@Service
public class SizeService implements SizeImp {
	
	
	@Autowired
	private SizeDao sizeDao;
	public SizeService() {
		// TODO Auto-generated constructor stub
	}

	public List<Size> indexSize(int id) {
		try {
			return sizeDao.indexSize(id);
		} catch (Exception e) {
			return null;
		}
		
	}

	public List<ProductDetail> indexSize(int id_size, int id_product) {
		try {
			return sizeDao.indexSize(id_size, id_product);
		} catch (Exception e) {
			return null;
		}
	}

}
