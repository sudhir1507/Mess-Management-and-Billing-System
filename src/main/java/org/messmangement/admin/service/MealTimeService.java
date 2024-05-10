package org.messmangement.admin.service;

import java.util.*;

import org.messmanagement.admin.model.MealModel;

public interface MealTimeService {
	public boolean addMealTime(MealModel model);
	public List<MealModel> getAllMealTimes();
	public boolean deleteMealType(int mtid);
	public boolean isUpdateMealTime(MealModel model);
}
