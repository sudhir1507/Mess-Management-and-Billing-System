package org.messmanagement.admin.repository;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.messmanagement.admin.DBConfig.DBConfig;
import org.messmanagement.admin.model.BillModel;
import org.messmanagement.admin.model.RegistrationModel;
import org.messmanagement.admin.model.TempBillModel;

public class BillGenerateRepositoryImpl extends DBConfig implements BillGenerateRepository {
	List<TempBillModel> templist;
	private int totalAmountByRid(int rid) {
		try {
			stmt = conn.prepareStatement(
					"select fees from category where cid=(select cid from registration where rid=?)");
			stmt.setInt(1, rid);
			rs = stmt.executeQuery();
			if (rs.next()) {
				int totalAmount = rs.getInt(1);
				return totalAmount;
			} else {
				return 0;
			}
		} catch (Exception e) {
			return 0;
		}
	}
	List<RegistrationModel> reglist;
	private List<RegistrationModel> getPaidAmountByRid(int rid) {
		try {
			reglist=new ArrayList<>();
			stmt = conn.prepareStatement("select name,amount,rsdate,redate from registration where rid=?");
			stmt.setInt(1, rid);
			rs = stmt.executeQuery();
			if (rs.next()) {
				RegistrationModel rmodel=new RegistrationModel();
		
				rmodel.setName(rs.getString(1));
				rmodel.setAmount(rs.getInt(2));
				rmodel.setRsdate(rs.getDate(3));
				rmodel.setRedate(rs.getDate(4));
				
				reglist.add(rmodel);
				return reglist.size()>0?reglist:null;
			} else {
				return null;
			}
		} catch (Exception e) {
			return null;
		}
	}
	int billid=0;
	public int getBillId() {
		try {
			stmt=conn.prepareStatement("select max(bid) from billgenerate");
			rs=stmt.executeQuery();
			if(rs.next()) {
				billid=rs.getInt(1);
			}
		    return ++billid;
		}catch(Exception e) {
			return -1;
		}
	}
	
	public int getCategoryIDByRid(int rid) {
		try {
			stmt = conn.prepareStatement("select cid from registration where rid=?");
			stmt.setInt(1, rid);
			rs = stmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			} else {
				return -1;
			}

		} catch (Exception e) {
			System.err.println("Error is " + e);
			return 1;
		}
	}
	
	public int getAttendanceCount(int rid,Date rsdate,Date redate) {
		int count=0;
		try {
			stmt=conn.prepareStatement("select count(status) from attendence where rid =? and (adate between ? and ?)");
			stmt.setInt(1, rid);
			stmt.setDate(2, rsdate);
			stmt.setDate(3, redate);
			
			rs=stmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);
			}else {
				count=0;
			}
			return count;
		}catch(Exception e) {
			System.err.println("Error is "+e);
			return 0;
		}
	}
	
	int bid;
	public boolean generateBill(int rid, Date bdate) {
		int totalAmount = totalAmountByRid(rid);
		List<RegistrationModel> rmlist= getPaidAmountByRid(rid);
	    RegistrationModel rm=rmlist.get(0);
	    int paidAmount=rm.getAmount();
		bid=this.getBillId();
		int ramaining = 0, extrapaid = 0;
		ramaining = totalAmount - paidAmount;
		try {
			stmt = conn.prepareStatement("insert into billgenerate values(?,?,?,?,?,?,?)");
			stmt.setInt(1,bid);
			stmt.setInt(2, rid);
			stmt.setDate(3, bdate);
			stmt.setInt(4, totalAmount);
			stmt.setInt(5, paidAmount);
			stmt.setInt(6, ramaining);
			if (ramaining <= 0) {
				stmt.setInt(7, 1);
			} else {
				stmt.setInt(7, 0);
			}
			int value = stmt.executeUpdate();
			if(value>0) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			System.err.println("Error is " + e);
			return false;
		}
	}
	List<TempBillModel> tlist;
	public List<TempBillModel> billGenerator(int rid, Date bdate){
		List<RegistrationModel> rmlist= getPaidAmountByRid(rid);
	    RegistrationModel rm=rmlist.get(0);
	    Date rsdate=(Date) rm.getRsdate();
	    Date redate=(Date) rm.getRedate();
	    String name=rm.getName();
		int prsentcount=this.getAttendanceCount(rid, rsdate, redate);
		boolean b=generateBill(rid, bdate);
		
		if(b) {
			try {
				tlist=new ArrayList<>();
				stmt=conn.prepareStatement("select * from billgenerate where bid=?");
				stmt.setInt(1, bid);
				rs=stmt.executeQuery();
				if(rs.next()) {
					TempBillModel model=new TempBillModel();
					model.setBillid(rs.getInt(1));
					model.setRid(rs.getInt(2));
					model.setBilldate(rs.getDate(3));
					model.setTotalAmount(rs.getInt(4));
					model.setPaidAmount(rs.getInt(5));
					model.setRemainingAmount(rs.getInt(6));
					model.setName(name);
					model.setSdate(rsdate);
					model.setEdate(redate);
					model.setPresent(prsentcount);
					tlist.add(model);
					return tlist.size()>0?tlist:null;
				}else {
					return null;
				}
			} catch (Exception e) {
				System.out.println("Error is "+e);
				return null;
			}
			
		}else {
			return null;
		}
	}
	

}
