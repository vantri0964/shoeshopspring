package com.levantri.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.levantri.dao.CategoryDao;
import com.levantri.empty.Category;
import com.levantri.imp.CategoryImp;

@Service
public class CategoryService implements CategoryImp {
	
	@Autowired
	private CategoryDao categoryDao;
	
	public CategoryService() {
		// TODO Auto-generated constructor stub
	}

	public List<Category> indexCategory() {
		return categoryDao.indexCategory();
	}

	public List<Category> chilrentCategory(int id) {
		return categoryDao.chilrentCategory(id);
	}

}
