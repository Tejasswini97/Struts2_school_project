package com.action;

import com.opensymphony.xwork2.ActionSupport;

public class EnquiryAction extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = 808191046476881179L;
	private String username;
    private String phoneNumber;
    private String email;
    private String message;
    
    // Getters and setters for the form fields

    public String execute() {
        // Perform any additional processing here
        return "SUCCESS";
    }
    
    public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void validate() {
        if (username == null || username.trim().isEmpty()) {
            addFieldError("username", "Username is required");
        }
        
        if (phoneNumber == null || phoneNumber.trim().isEmpty()) {
            addFieldError("phoneNumber", "Phone number is required");
        }
        
        
        if (email == null || email.trim().isEmpty()) {
            addFieldError("email", "Email is required");
        }
        
        if (message == null || message.trim().isEmpty()) {
            addFieldError("message", "Message is required");
        }
    }
}

