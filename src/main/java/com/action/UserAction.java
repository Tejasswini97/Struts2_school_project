package com.action;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String username;
	private String password;
	private String confirmPassword;

	public String execute() {
		return SUCCESS;
	}

	// Getter and setter methods for username and password

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public void validate() {
		// Add validation logic here
		if (username == null || username.isEmpty()) {
			addFieldError("username", "Username is required.");
		}
		
			if (password == null || password.isEmpty()) {
				addFieldError("password", "Password is required.");
			}
			if ("".equals(getConfirmPassword())) {
				addFieldError("confirmPassword", getText("Please Confirm Your Password"));
			}
			if(!(getPassword().equals(getConfirmPassword()))){
				addFieldError("confirmPassword", getText("Password not match"));
			}

		}
	}

