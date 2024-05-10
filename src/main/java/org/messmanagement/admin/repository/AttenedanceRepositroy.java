package org.messmanagement.admin.repository;

import java.sql.Date;
import java.util.List;

public interface AttenedanceRepositroy {
	public boolean trackAttendance(int rid,Date date,int aStatus,int mtid);
	public List<Object[]> getAllAttendance();
}
