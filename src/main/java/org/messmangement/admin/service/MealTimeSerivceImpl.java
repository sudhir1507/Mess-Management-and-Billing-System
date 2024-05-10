package org.messmangement.admin.service;

import java.util.List;

import org.messmanagement.admin.model.MealModel;
import org.messmanagement.admin.repository.MealTimeRepository;
import org.messmanagement.admin.repository.MealTimeRepositoryImpl;

public class MealTimeSerivceImpl implements MealTimeService{
    MealTimeRepository mRepository=new MealTimeRepositoryImpl();
	@Override
	public boolean addMealTime(MealModel model) {
		
		return mRepository.addMealTime(model);
	}
	@Override
	public List<MealModel> getAllMealTimes() {
		
		return mRepository.getAllMealTimes();
	}
	@Override
	public boolean deleteMealType(int mtid) {
		
		return mRepository.deleteMealType(mtid);
	}
	@Override
	public boolean isUpdateMealTime(MealModel model) {
		
		return mRepository.isUpdateMealTime(model);
	}
       
}
