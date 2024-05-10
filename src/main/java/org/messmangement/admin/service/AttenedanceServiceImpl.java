package org.messmangement.admin.service;

import java.sql.Date;
import java.util.List;

import org.messmanagement.admin.repository.AttenedanceRepositoryImpl;
import org.messmanagement.admin.repository.AttenedanceRepositroy;

public class AttenedanceServiceImpl implements AttenedanceService{
	AttenedanceRepositroy aRepository=new AttenedanceRepositoryImpl();
	@Override
	public boolean trackAttendance(int rid,Date date, int aStatus, int mtid) {
		
		return aRepository.trackAttendance(rid, date, aStatus, mtid);
	}
	@Override
	public List<Object[]> getAllAttendance() {
		
		return aRepository.getAllAttendance();
	}

	

}
