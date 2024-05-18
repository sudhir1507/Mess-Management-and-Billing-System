package org.messmangement.admin.service;

import java.sql.Date;
import java.util.List;

import org.messmanagement.admin.model.RegistrationModel;

public interface RegistrationService {
     public List<Integer> validateLogin(String username,String password);
     public boolean addRegistration(RegistrationModel model);
     public List<Object[]> getAllRegistration();
     public boolean deleteRegistration(int rid);
     public boolean updateRegistration(int rid,String name,String contact,String address,Date rsdate,Date redate,int amount,String username, String password,int cid,int roleid);
     public List<RegistrationModel> getNameByRid(int rid);
     public boolean updateProfile(int rid, String name, String contact,String address,String email, String password);
     public List<Object[]> getAllRegistrationByCategory(String category);
}
