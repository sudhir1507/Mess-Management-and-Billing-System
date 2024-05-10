package org.messmangement.admin.service;

import java.util.List;

import org.messmanagement.admin.model.CategoryModel;
import org.messmanagement.admin.repository.CategoryRepositoryImpl;
import org.messmanagement.admin.repository.CategoryRepositroy;

public class CategoryServiceImpl implements CategoryService {
    CategoryRepositroy cRepository=new CategoryRepositoryImpl();
	@Override
	public boolean addCategory(CategoryModel cModel) {
		
		return cRepository.addCategory(cModel);
	}
	@Override
	public List<CategoryModel> getAllCategories() {
		
		return cRepository.getAllCategories();
	}
	@Override
	public boolean deleteCategory(int cid) {
		
		return cRepository.deleteCategory(cid);
	}
	@Override
	public boolean isUpdateCategory(CategoryModel model) {
		
		return cRepository.isUpdateCategory(model);
	}
	//@Override
//	public int getCategoryIdByName(String category) {
//		// TODO Auto-generated method stub
//		return cRepository.getCategoryIdByName(category);
//	}

}
