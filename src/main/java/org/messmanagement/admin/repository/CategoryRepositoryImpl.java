package org.messmanagement.admin.repository;

import java.util.*;

import org.messmanagement.admin.DBConfig.DBConfig;
import org.messmanagement.admin.model.CategoryModel;

public class CategoryRepositoryImpl extends DBConfig implements CategoryRepositroy {
	List<CategoryModel> list = new ArrayList<CategoryModel>();
	@Override
	public boolean addCategory(CategoryModel cModel) {
		try {
			try {
				stmt = conn.prepareStatement("insert into category values('0',?,?)");
				stmt.setString(1, cModel.getCategory());
				stmt.setInt(2, cModel.getFees());
				int value = stmt.executeUpdate();
				return value > 0 ? true : false;
			} catch (Exception e) {
				System.err.println("Error is re " + e);
				return false;
			}
			
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return false;
		}
	}

	@Override
	public List<CategoryModel> getAllCategories() {
		try {

			stmt = conn.prepareStatement("select * from category");
			rs = stmt.executeQuery();
			while (rs.next()) {
				CategoryModel model1 = new CategoryModel();
				model1.setCid(rs.getInt(1));
				model1.setCategory(rs.getString(2));
				model1.setFees(rs.getInt(3));
				list.add(model1);
			}
			return list.size() > 0 ? list : null;
		} catch (Exception e) {
			System.err.println("Error is " + e);
			return null;
		}
	}

	@Override
	public boolean deleteCategory(int cid) {
		try {
			stmt=conn.prepareStatement("delete from category where cid=?");
			stmt.setInt(1, cid);
			int value=stmt.executeUpdate();
		    return value>0?true:false;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return false;
		}
	}

	@Override
	public boolean isUpdateCategory(CategoryModel model) {
		try {
			stmt=conn.prepareStatement("update category set category=?,fees=? where cid=?");
			stmt.setString(1,model.getCategory());
			stmt.setInt(2, model.getFees());
			stmt.setInt(3, model.getCid());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch(Exception e) {
			System.err.println("Error is "+e);
			return false;
		}
	}

	
	
	
              
}
