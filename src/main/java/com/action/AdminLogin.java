package com.action;

import com.opensymphony.xwork2.ActionSupport;

public class AdminLogin extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
    private String password;
    
   
    
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
	
	    public void validate() {
	        // Add validation logic here
	        if (username == null || username.isEmpty()) {
	            addFieldError("username", "Username is required.");
	        }else if(!getUsername().equals("admin")) {
	        	addFieldError("username", "Invalid Username.");
	        }
	       if (password == null || password.isEmpty()) {
	            addFieldError("password", "Password is required.");
	        }else if(!getPassword().equals("123")) {
	        	addFieldError("password", "Invalid Password.");
	    }
	 }
}
