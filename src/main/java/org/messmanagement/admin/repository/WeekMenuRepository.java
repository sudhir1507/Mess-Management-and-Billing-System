package org.messmanagement.admin.repository;

import java.util.List;

import org.messmanagement.admin.model.WeekMenuModel;

public interface WeekMenuRepository {
	public boolean addWeekMenu(WeekMenuModel model);
	public List<WeekMenuModel> getAllMenu();
	public boolean deleteWeekMenu(int mid);
	public boolean isUpdateWeekMenu(WeekMenuModel model);
}
