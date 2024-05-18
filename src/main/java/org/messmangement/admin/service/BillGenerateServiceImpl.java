package org.messmangement.admin.service;

import java.sql.Date;
import java.util.List;

import org.messmanagement.admin.model.BillModel;
import org.messmanagement.admin.model.TempBillModel;
import org.messmanagement.admin.repository.BillGenerateRepository;
import org.messmanagement.admin.repository.BillGenerateRepositoryImpl;

public class BillGenerateServiceImpl implements BillGenerateService {
      BillGenerateRepository billRepository=new BillGenerateRepositoryImpl();
	@Override
	public List<TempBillModel> billGenerator(int rid, Date bdate) {
		
		return billRepository.billGenerator(rid, bdate);
	}

}
