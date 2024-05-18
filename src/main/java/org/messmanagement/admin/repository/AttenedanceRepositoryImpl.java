package org.messmanagement.admin.repository;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.messmanagement.admin.DBConfig.DBConfig;

public class AttenedanceRepositoryImpl extends DBConfig implements AttenedanceRepositroy {
    List<Object[]> list;
	public int getCategoryIdByName(String category) {
		try {
			stmt=conn.prepareStatement("select cid from category where category=?");
			stmt.setString(1, category);
			rs=stmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}else {
				return 0;
			}
			
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return 0;
		}
	}
	
	@Override
	public boolean trackAttendance(int rid, Date date, int aStatus, int mtid) {
		try {
			int cid=this.getCategoryIdByName("category");
			stmt=conn.prepareStatement("insert into attendence values('0',?,?,?,?)");
			stmt.setInt(1, rid);
			stmt.setDate(2, date);
			stmt.setInt(3, aStatus);
			stmt.setInt(4, mtid);
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch(Exception e) {
			System.out.println("Error is"+e);
			return false;
		}
	}

	@Override
	public List<Object[]> getAllAttendance() {
		try {
			list=new ArrayList<>();
			stmt=conn.prepareStatement("select r.name,a.adate,m.mealtime from registration r inner join attendence a on a.rid=r.rid inner join mealtype m on m.mtid=a.mtid");
			rs=stmt.executeQuery();
			while(rs.next()) {
				Object obj[]=new Object[] {rs.getString(1),rs.getDate(2),rs.getString(3)};
				list.add(obj);
			}
			return list.size()>0?list:null;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return null;
		}
	}
     List<Object[]> alist;
	@Override
	public List<Object[]> getMyAttendance(int reid) {
		try {
			alist=new ArrayList<>();
			stmt=conn.prepareStatement("select a.adate,m.mealtime from attendence a inner join mealtype m on a.mtid=m.mtid where rid=?");
			stmt.setInt(1, reid);
			rs=stmt.executeQuery();
			while(rs.next()) {
				Object obj[]=new Object[] {rs.getDate(1),rs.getString(2)};
				alist.add(obj);
			}
			return alist.size()>0?alist:null;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return null;
		}
	}

}
