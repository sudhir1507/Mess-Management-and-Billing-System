package org.messmangement.admin.service;

import java.sql.Date;
import java.util.List;

import org.messmanagement.admin.model.WeekMenuModel;

public interface WeekMenuService {
	public boolean addWeekMenu(WeekMenuModel model);
	public List<WeekMenuModel> getAllMenu();
	public boolean deleteWeekMenu(int mid);
	public boolean isUpdateWeekMenu(WeekMenuModel model);
	public WeekMenuModel getTodaysMenu(Date date);

}
