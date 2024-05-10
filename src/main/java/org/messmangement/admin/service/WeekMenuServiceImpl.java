package org.messmangement.admin.service;

import java.util.List;

import org.messmanagement.admin.model.WeekMenuModel;
import org.messmanagement.admin.repository.WeekMenuRepository;
import org.messmanagement.admin.repository.WeekMenuRepositoryImpl;

public class WeekMenuServiceImpl implements WeekMenuService {
    WeekMenuRepository wRepository=new WeekMenuRepositoryImpl();
	@Override
	public boolean addWeekMenu(WeekMenuModel model) {
		
		return wRepository.addWeekMenu(model);
	}
	@Override
	public List<WeekMenuModel> getAllMenu() {
		
		return wRepository.getAllMenu();
	}
	@Override
	public boolean deleteWeekMenu(int mid) {
		
		return wRepository.deleteWeekMenu(mid);
	}
	@Override
	public boolean isUpdateWeekMenu(WeekMenuModel model) {
		
		return wRepository.isUpdateWeekMenu(model);
	}

}
