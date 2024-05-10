package org.messmanagement.admin.repository;

import java.util.*;

import org.messmanagement.admin.DBConfig.DBConfig;
import org.messmanagement.admin.model.MealModel;

public class MealTimeRepositoryImpl extends DBConfig implements MealTimeRepository {
   List<MealModel> list=new ArrayList<>();
	int mtid=0;
	public int getMealTypeId() {
		try {
			stmt=conn.prepareStatement("select max(mtid) from Mealtype");
			rs=stmt.executeQuery();
			if(rs.next()) {
				mtid=rs.getInt(1);
			}
		    return ++mtid;
		}catch(Exception e) {
			return -1;
		}
	}
	@Override
	public boolean addMealTime(MealModel model) {
		try {
			int mtid=this.getMealTypeId();
			stmt=conn.prepareStatement("insert into Mealtype values(?,?)");
			stmt.setInt(1, mtid);
			stmt.setString(2, model.getMealtype());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		} catch (Exception e) {
			System.out.println("Error is "+e);
			return false;
		}
	}
	@Override
	public List<MealModel> getAllMealTimes() {
		try {
			stmt=conn.prepareStatement("select * from mealtype");
			rs=stmt.executeQuery();
			while(rs.next()) {
				MealModel model=new MealModel();
				model.setMtid(rs.getInt(1));
				model.setMealtype(rs.getString(2));
				list.add(model);
			}
			return list.size()>0?list:null;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return null;
		}
		
	}
	@Override
	public boolean deleteMealType(int mtid) {
		   try {
			   stmt=conn.prepareStatement("delete from mealtype where mtid=?");
			   stmt.setInt(1, mtid);
			   int value=stmt.executeUpdate();
			   return value>0?true:false;
		   }catch (Exception e) {
			   System.out.println("Error is "+e);
			return false;
		}
		
	}
	@Override
	public boolean isUpdateMealTime(MealModel model) {
		try {
			stmt=conn.prepareStatement("update mealtype set mealtime=? where mtid=?");
			stmt.setString(1, model.getMealtype());
			stmt.setInt(2, model.getMtid());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch(Exception e ) {
			System.out.println("Error is "+e);
			return false;
		}
	}

}
