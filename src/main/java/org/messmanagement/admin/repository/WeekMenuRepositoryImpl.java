package org.messmanagement.admin.repository;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.messmanagement.admin.DBConfig.DBConfig;
import org.messmanagement.admin.model.WeekMenuModel;

public class WeekMenuRepositoryImpl extends DBConfig implements WeekMenuRepository {
	List<WeekMenuModel> list;
	@Override
	public boolean addWeekMenu(WeekMenuModel model) {
		try {
			stmt=conn.prepareStatement("insert into weekmenu values('0',?,?,?)");
			stmt.setDate(1, model.getDate());
			stmt.setString(2, model.getLunch());
			stmt.setString(3, model.getDinner());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return false;
		}
	}

	@Override
	public List<WeekMenuModel> getAllMenu() {
		try {
			list=new ArrayList<>();
			stmt=conn.prepareStatement("select *from weekmenu");
			rs=stmt.executeQuery();
			while(rs.next()){
				WeekMenuModel model=new WeekMenuModel();
				model.setMid(rs.getInt(1));
				model.setDate(rs.getDate(2));
				model.setLunch(rs.getString(3));
				model.setDinner(rs.getString(4));
				list.add(model);
			}
			return list.size()>0?list:null;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return null;
		}
	}

	@Override
	public boolean deleteWeekMenu(int mid) {
		try {
			stmt=conn.prepareStatement("delete from weekmenu where mid=?");
			stmt.setInt(1, mid);
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return false;
		}
	}

	@Override
	public boolean isUpdateWeekMenu(WeekMenuModel model) {
		try {
			stmt=conn.prepareStatement("update weekmenu set lunch=?, dinner=? where mid=?");
			//stmt.setDate(1, model.getDate());
			stmt.setString(1, model.getLunch());
			stmt.setString(2, model.getDinner());
			stmt.setInt(3, model.getMid());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return false;
		}
	}

	@Override
	public WeekMenuModel getTodaysMenu(Date date) {
		try {
			WeekMenuModel model=new WeekMenuModel();
			stmt=conn.prepareStatement("select mdate,lunch,dinner from weekmenu where mdate=?");
			stmt.setDate(1, date);
			rs=stmt.executeQuery();
			if(rs.next()) {
				model.setDate(rs.getDate(1));
				model.setLunch(rs.getString(2));
				model.setDinner(rs.getString(3));
				return model;
			}else {
			    return null;
			}
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return null;
		}
	}

}
