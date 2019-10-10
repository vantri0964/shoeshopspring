package com.levantri.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.levantri.dao.ColorDao;
import com.levantri.empty.Color;
import com.levantri.imp.ColorImp;

@Service
public class ColorService implements ColorImp {
	
	@Autowired
	private ColorDao colorDao;
	public ColorService() {
		// TODO Auto-generated constructor stub
	}

	public List<Color> indexColor(int id) {
		try {
			return colorDao.indexColor(id);
		} catch (Exception e) {
			return null;
		}
	}

}
