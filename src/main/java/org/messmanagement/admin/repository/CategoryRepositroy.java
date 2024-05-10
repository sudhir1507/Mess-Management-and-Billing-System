package org.messmanagement.admin.repository;

import java.util.List;

import org.messmanagement.admin.model.CategoryModel;

public interface CategoryRepositroy {
         public boolean addCategory(CategoryModel cModel);
         public List<CategoryModel> getAllCategories();
         public boolean deleteCategory(int cid);
         public boolean isUpdateCategory(CategoryModel model);
         //public int getCategoryIdByName(String category);
         
}
