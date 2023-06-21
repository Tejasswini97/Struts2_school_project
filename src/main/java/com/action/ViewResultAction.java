package com.action;

import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import com.bean.StudentBean;

public class ViewResultAction extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = -1017580369750323168L;
	private int studentId, total, physics, chemistry, maths;
    private String studentName, status;
    private double percentage;

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public double getPercentage() {
        return percentage;
    }

    public void setPercentage(double percentage) {
        this.percentage = percentage;
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

	public int getChemistry() {
		return chemistry;
	}

	public void setChemistry(int chemistry) {
		this.chemistry = chemistry;
	}

	public int getMaths() {
		return maths;
	}

	public void setMaths(int maths) {
		this.maths = maths;
	}

	public String execute() {
        try {
            StudentDao studentDao = new StudentDao();
            ResultSet rs = studentDao.viewResult(studentId);
            if (rs.next()) {
                studentName = rs.getString("studentname");
                total = rs.getInt("total");
                percentage = rs.getDouble("percentage");
                status = rs.getString("status");
                physics = rs.getInt("physics");
                chemistry = rs.getInt("chemistry");
                maths = rs.getInt("maths");
                return SUCCESS;
            } else {
                addActionError("No result found for the provided student ID");
                return ERROR;
            }
        } catch (Exception e) {
            e.printStackTrace();
            addActionError("An error occurred while retrieving the result");
            return ERROR;
        }
    }

	
}
