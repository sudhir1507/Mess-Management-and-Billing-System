package org.messmangement.admin.service;

import java.sql.Date;
import java.util.List;

import org.messmanagement.admin.model.BillModel;
import org.messmanagement.admin.model.TempBillModel;

public interface BillGenerateService {
  public List<TempBillModel> billGenerator(int rid,Date bdate); 
}
