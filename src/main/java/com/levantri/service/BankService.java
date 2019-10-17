package com.levantri.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.levantri.dao.BankDao;
import com.levantri.empty.Bank;
import com.levantri.imp.BankImp;

@Service
public class BankService implements BankImp {
	@Autowired
	private BankDao bankDao;
	public BankService() {
		// TODO Auto-generated constructor stub
	}

	public List<Bank> indexBank() {
		try {
			return bankDao.indexBank();
		} catch (Exception e) {
			return null;
		}
		
	}

}
