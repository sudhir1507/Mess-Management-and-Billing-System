package org.messmangement.admin.service;

import java.sql.Date;
import java.util.List;

import org.messmanagement.admin.model.RegistrationModel;
import org.messmanagement.admin.repository.RegistrationRepositoryImpl;
import org.messmanagement.admin.repository.RegistrationRepositroy;

public class RegistrationServiceImpl implements RegistrationService {
	RegistrationRepositroy rRepository=new RegistrationRepositoryImpl();
	@Override
	public List<Integer> validateLogin(String username, String password) {
		
		return rRepository.validateLogin(username, password);
	}

	@Override
	public boolean addRegistration(RegistrationModel model) {
		
		return rRepository.addRegistration(model) ;
	}

	@Override
	public List<Object[]> getAllRegistration() {
		
		return rRepository.getAllRegistration();
	}

	@Override
	public boolean deleteRegistration(int rid) {
		
		return rRepository.deleteRegistration(rid);
	}

	@Override
	public boolean updateRegistration(int rid, String name, String contact, String address, Date rsdate, Date redate,
			int amount, String username, String password, int cid, int roleid) {
		
		return rRepository.updateRegistration(rid,name,contact,address,rsdate,redate,amount,username,password,cid,roleid);
	}

}
