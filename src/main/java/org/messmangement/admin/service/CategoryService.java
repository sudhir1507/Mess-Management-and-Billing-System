package org.messmangement.admin.service;

import java.util.List;

import org.messmanagement.admin.model.CategoryModel;

public interface CategoryService {
    public boolean addCategory(CategoryModel cModel);
    public List<CategoryModel> getAllCategories();
    public boolean deleteCategory(int cid);
    public boolean isUpdateCategory(CategoryModel model);
    //public int getCategoryIdByName(String category);
}
