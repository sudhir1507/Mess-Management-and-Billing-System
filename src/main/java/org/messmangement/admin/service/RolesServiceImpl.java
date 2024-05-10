package org.messmangement.admin.service;

import java.util.List;

import org.messmanagement.admin.model.RolesModel;
import org.messmanagement.admin.repository.RolesRepository;
import org.messmanagement.admin.repository.RolesRepositoryImpl;

public class RolesServiceImpl implements RolesService{
     RolesRepository rRepository=new RolesRepositoryImpl();
	@Override
	public List<RolesModel> getAllRoles() {
		
		return rRepository.getAllRoles();
	}
	@Override
	public boolean addRoles(RolesModel model) {
		
		return rRepository.addRoles(model);
	}
	@Override
	public boolean deleteRoles(int roleid) {
		
		return rRepository.deleteRoles(roleid);
	}
	@Override
	public boolean updateRole(RolesModel model) {
		
		return rRepository.updateRole(model);
	}

}
