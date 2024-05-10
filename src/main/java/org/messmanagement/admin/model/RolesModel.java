package org.messmanagement.admin.model;

public class RolesModel {
   private int roleid;
   private String rolename;
public int getRoleid() {
	return roleid;
}
public void setRoleid(int roleid) {
	this.roleid = roleid;
}
public String getRolename() {
	return rolename;
}
public void setRolename(String rolename) {
	this.rolename = rolename;
}
public RolesModel(int roleid, String rolename) {
	super();
	this.roleid = roleid;
	this.rolename = rolename;
}
   public RolesModel() {
	   
   }
}
