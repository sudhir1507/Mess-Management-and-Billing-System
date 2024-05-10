package org.messmanagement.admin.repository;

import java.util.List;

import org.messmanagement.admin.model.RolesModel;

public interface RolesRepository {
	public boolean addRoles(RolesModel model);
	public List<RolesModel> getAllRoles();
	public boolean deleteRoles(int roleid);
	public boolean updateRole(RolesModel model);
}
