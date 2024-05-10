package org.messmanagement.admin.repository;

import java.util.ArrayList;
import java.util.List;

import org.messmanagement.admin.DBConfig.DBConfig;
import org.messmanagement.admin.model.RolesModel;

public class RolesRepositoryImpl extends DBConfig implements RolesRepository{
    List<RolesModel> list=new ArrayList<>();
	@Override
	public List<RolesModel> getAllRoles() {
		try {
			list=new ArrayList<>();
			
			stmt=conn.prepareStatement("select * from roles");
			rs=stmt.executeQuery();
			while(rs.next()) {
				RolesModel model=new RolesModel();
				model.setRoleid(rs.getInt(1));
				model.setRolename(rs.getString(2));
				list.add(model);
			}
			return list.size()>0?list:null;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return null;
		}
	}
	@Override
	public boolean addRoles(RolesModel model) {
		try {
			stmt=conn.prepareStatement("insert into roles values('0',?)");
			stmt.setString(1, model.getRolename());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return false;
		}
	}
	@Override
	public boolean deleteRoles(int roleid) {
		try {
			stmt=conn.prepareStatement("delete from roles where roleid=?");
			stmt.setInt(1, roleid);
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return false;
		}
	}
	@Override
	public boolean updateRole(RolesModel model) {
		try {
			stmt=conn.prepareStatement("update roles set rolename=? where roleid=?");
			stmt.setString(1, model.getRolename());
			stmt.setInt(2, model.getRoleid());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch(Exception e) {
			System.out.println("Error is "+e);
			return false;
		}
	}
	

}
