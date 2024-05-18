package org.messmanagement.admin.repository;

import java.sql.Date;
import java.util.List;

import org.messmanagement.admin.model.BillModel;
import org.messmanagement.admin.model.TempBillModel;

public interface BillGenerateRepository {
	public List<TempBillModel> billGenerator(int rid,Date bdate);
	
}
