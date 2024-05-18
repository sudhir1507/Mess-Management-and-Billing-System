package org.messmangement.admin.service;

import java.sql.Date;
import java.util.List;

public interface AttenedanceService {
		public boolean trackAttendance(int rid,Date date,int aStatus,int mtid);
		public List<Object[]> getAllAttendance();
		public List<Object[]> getMyAttendance(int reid);

}
