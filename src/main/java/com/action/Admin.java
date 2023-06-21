package com.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.bean.StudentBean;
import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;

public class Admin extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3558089263994657898L;
	ResultSet rs = null;
	StudentBean bean = null;
	private String  fname, experience, subject, studentname, dob, standard, status;
	private int total, studentid, physics, chemistry, maths;
	private Double percentage;
	private String msg = "";
	StudentDao student = null;
	int ctr = 0;
	private List<StudentBean> beanList;
	private boolean noData = false;

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCtr() {
		return ctr;
	}

	public void setCtr(int ctr) {
		this.ctr = ctr;
	}

	public List<StudentBean> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<StudentBean> beanList) {
		this.beanList = beanList;
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	public String getStudentname() {
		return studentname;
	}

	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getStudentid() {
		return studentid;
	}

	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}

	public Double getPercentage() {
		return percentage;
	}

	public void setPercentage(Double percentage) {
		this.percentage = percentage;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getPhysics() {
		return physics;
	}

	public void setPhysics(int physics) {
		this.physics = physics;
	}

	public int getMaths() {
		return maths;
	}

	public void setMaths(int maths) {
		this.maths = maths;
	}

	

	// Method to insert faculty details
	public String insertFaculty() {
		student = new StudentDao();
		try {
			ctr = student.addFaculty(fname, experience, subject);
			if (ctr > 0) {
				msg = "Details inserted Successfull";
			} else {
				msg = "Please enter the valid details";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "INSERT";
	}

	// Method to insert student details
	public String insertStudentDetails() {
		student = new StudentDao();

		try {
			ctr = student.addStudent(studentid, studentname, dob, standard, physics, chemistry, maths, total,
					percentage, status);

			if (ctr > 0) {
				msg = "Details inserted Successfull";
			} else {
				msg = "Please enter the valid details";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "STUDENT";
	}

	// Method to view faculty details
	public String viewFacultyDetails() {
		try {
			beanList = new ArrayList<>();
			student = new StudentDao(); // Instantiate the StudentDao object
			rs = student.viewFaculty();

			if (rs != null) {
				while (rs.next()) {
					bean = new StudentBean();
					bean.setFname(rs.getString("fname"));
					bean.setExperience(rs.getString("experience"));
					bean.setSubject(rs.getString("subject"));
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
		return "Faculty";
	}

	// Method to view topper's list
	public String toppersList() {
		try {

			beanList = new ArrayList<>();
			student = new StudentDao(); // Instantiate the StudentDao object
			rs = student.viewToppers(studentid, studentname, total, percentage);

			if (rs != null) {
				while (rs.next()) {

					bean = new StudentBean();
					bean.setStudentid(rs.getInt("studentid"));
					bean.setStudentname(rs.getString("studentname"));
					bean.setTotal(rs.getInt("total"));
					bean.setPercentage(rs.getDouble("percentage"));
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
		return "TOPPERS";
	}

	public String execute() {
		return SUCCESS;

	}

}
