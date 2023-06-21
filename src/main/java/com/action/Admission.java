package com.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.bean.StudentBean;
import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;

public class Admission extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3417469906824357824L;
	private String sname, dob, standard;
	private String msg = "";
	StudentDao student = null;
	int ctr = 0;
	List<StudentBean> beanList = null;
	ResultSet rs = null;
	StudentBean bean= null;
	

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public StudentDao getStudent() {
		return student;
	}

	public void setStudent(StudentDao student) {
		this.student = student;
	}

	public int getCtr() {
		return ctr;
	}

	public void setCtr(int ctr) {
		this.ctr = ctr;
	}
	
	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}
	public List<StudentBean> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<StudentBean> beanList) {
		this.beanList = beanList;
	}


	//Method to insert new admission
	public String addAdmission() {
		student = new StudentDao();

		try {
			ctr = student.newAdmission(sname, dob, standard);
			if (ctr > 0) {
				msg = "Details inserted Successfull";
			} else {
				msg = "Please enter the valid details";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ADMISSION";
	}
	
	//Method to view all admission
	public String listAdmission() {
	    try {
	        beanList = new ArrayList<>();
	        student = new StudentDao(); // Instantiate the StudentDao object
	        rs = student.viewAdmission();

	        if (rs != null) {
	            while (rs.next()) {
	                bean = new StudentBean();
	                bean.setSname(rs.getString("sname"));
	                bean.setDob(rs.getString("dob"));
	                bean.setStandard(rs.getString("standard"));
	                beanList.add(bean);
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        // Close the ResultSet and StudentDao object
	        try {
	            if (rs != null) {
	                rs.close();
	            }
	           
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return "VIEW ADMISSION";
	}


	public String excecute() {
		return SUCCESS;
		
	}

		
	}
	


