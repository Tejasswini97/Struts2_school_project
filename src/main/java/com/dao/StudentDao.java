package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class StudentDao {
	// method for creating a connection
	public static Connection getConnection() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/school", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// method for view result
	public ResultSet viewResult( int studentid) throws Exception {
		ResultSet rs=null;
		try {
			String sql = "SELECT  studentname, total, percentage, status, physics,chemistry,maths FROM student WHERE studentid=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			 // Set the student ID as a parameter
			ps.setInt(1, studentid);
			rs = ps.executeQuery();
			
			// Execute the query without passing the query string
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// method for view faculty details
	public ResultSet viewFaculty() throws Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM faculty";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}

	}

	// Method for view topper's list
	public ResultSet viewToppers(int studentid, String studentname, int total, Double percentage) throws Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT  studentid, studentname, total, percentage FROM student WHERE percentage>=70 ORDER By total Desc";
			PreparedStatement ps = getConnection().prepareStatement(sql);

			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}

	}
	
	

	// method for Insert Faculty details in database
	public int addFaculty(String fname, String experience, String subject) throws Exception {
		int i = 0;
		try {
			String sql = ("INSERT INTO faculty(fname,experience,subject)" + " values" + "(? ,?,?)");
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, fname);
			ps.setString(2, experience);
			ps.setString(3, subject);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// method for Insert Student details in database
	public int addStudent(int studentid, String studentname, String dob, String standard, int physics, int chemistry,
			int maths, int total, Double percentage, String status) throws Exception {
		int i = 0;
		try {
			String sql = ("INSERT INTO student(studentid,studentname,dob,standard,physics,chemistry,maths,total,percentage,status)"
					+ " values" + "(?,?,?,?,?,?,?,?,?,?)");
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setInt(1, studentid);
			ps.setString(2, studentname);
			ps.setString(3, dob);
			ps.setString(4, standard);
			ps.setInt(5, physics);
			ps.setInt(6, chemistry);
			ps.setInt(7, maths);
			ps.setInt(8, total);
			ps.setDouble(9, percentage);
			ps.setString(10, status);

			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}
	
	// method for Insert new admission details in database
		public int newAdmission(String sname, String dob, String standard) throws Exception {
			int i = 0;
			try {
				String sql = ("INSERT INTO admission(sname,dob,standard)" + " values" + "(? ,?,?)");
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ps.setString(1, sname);
				ps.setString(2, dob);
				ps.setString(3, standard);
				i = ps.executeUpdate();
				return i;
			} catch (Exception e) {
				e.printStackTrace();
				return i;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
		}
		
		// method for view admission details
		public ResultSet viewAdmission() throws Exception {
			ResultSet rs = null;
			try {
				String sql = "SELECT * FROM admission";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				rs = ps.executeQuery();
				return rs;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}

		}
		
		
}
