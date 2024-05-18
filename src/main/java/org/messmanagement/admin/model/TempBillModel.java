package org.messmanagement.admin.model;

import java.sql.Date;

public class TempBillModel {
	    private int billid;
	    private Date billdate;
	    private int rid;
		private String name;
		
		private Date sdate;
		private Date edate;
		private int present;
		private int totalAmount;
		private int paidAmount;
		private int remainingAmount;
		public int getRemainingAmount() {
			return remainingAmount;
		}
		public void setRemainingAmount(int remainingAmount) {
			this.remainingAmount = remainingAmount;
		}
		public Date getBilldate() {
			return billdate;
		}
		public void setBilldate(Date billdate) {
			this.billdate = billdate;
		}
		public int getBillid() {
			return billid;
		}
		public void setBillid(int billid) {
			this.billid = billid;
		}
		public int getRid() {
			return rid;
		}
		public void setRid(int rid) {
			this.rid = rid;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public Date getSdate() {
			return sdate;
		}
		public void setSdate(Date sdate) {
			this.sdate = sdate;
		}
		public Date getEdate() {
			return edate;
		}
		public void setEdate(Date edate) {
			this.edate = edate;
		}
		public int getPresent() {
			return present;
		}
		public void setPresent(int present) {
			this.present = present;
		}
		public int getTotalAmount() {
			return totalAmount;
		}
		public void setTotalAmount(int totalAmount) {
			this.totalAmount = totalAmount;
		}
		public int getPaidAmount() {
			return paidAmount;
		}
		public void setPaidAmount(int paidAmount) {
			this.paidAmount = paidAmount;
		}
		
}
