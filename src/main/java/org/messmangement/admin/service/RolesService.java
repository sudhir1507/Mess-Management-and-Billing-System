package org.messmangement.admin.service;

import java.util.List;

import org.messmanagement.admin.model.RolesModel;

public interface RolesService {
	public boolean addRoles(RolesModel model);
	public List<RolesModel> getAllRoles();
	public boolean deleteRoles(int roleid);
	public boolean updateRole(RolesModel model);
}
