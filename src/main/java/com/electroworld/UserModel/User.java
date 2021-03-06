package com.electroworld.UserModel;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Size;


import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;




@Entity
@Embeddable
public class User implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long ID;
	
	private String Email;
	
	private String UserName;
	
	private String Password;
	
	@Transient
	private String CPassword;
	
	private String Phone;
	
	
	private String Address;
	
	private int Role = 1;
	private boolean Active = true;
	
	/*@AssertTrue(message="passVerify field should be equal than pass field")
	private boolean isValid() {
		return this.Password.equals(this.CPassword);
	}*/
	
	
	
	public boolean isActive() {
		return Active;
	}
	public void setActive(boolean active) {
		Active = active;
	}
	public int getRole() {
		return Role;
	}
	public void setRole(int role) {
		Role = role;
	}
	public Long getID() {
		return ID;
	}
	public void setID(Long iD) {
		ID = iD;
	}
	
	
	@NotEmpty(message="Email field is mandatory.")
		public String getEmail() 
		{
		return Email;
		}
		public void setEmail(String email) 
		{
		Email = email;
		}
	
	
	@NotEmpty(message="Username field is mandatory.")
	public String getUsername() 
	{
		return UserName;
	}
	public void setUsername(String username) 
	{
		UserName = username;
	}
	
	
	@NotEmpty(message="Password field is mandatory.")
	@Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")	
	public String getPassword() 
	{
		return Password;
	}
	public void setPassword(String password) 
	{
		Password = password;
	}
	
	@NotEmpty(message="CPassword field is mandatory.")
	@Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")	
	public String getCPassword() {
		return CPassword;
	}
	public void setCPassword(String cPassword) {
		CPassword = cPassword;
	}
	
	
	
	
	@Length(max=10,min=10,message="Phone number is not valid. Should be of length 10.")
    @NotEmpty(message="Phone field is mandatory.")
	   	public String getPhone() 
	{
		return Phone;
	}
	public void setPhone(String phone) 
	{
		Phone = phone;
	}
	
	@NotEmpty(message="Address field is mandatory.")
	public String getAddress() 
	{
		return Address;
	}
	public void setAddress(String address) 
	{
		Address = address;
	}
	
	//@Override
	public String toString() 
	{
		return "{ID:\"" + ID + "\", Email:\"" + Email + "\", UserName:\"" + UserName + "\", Phone:\"" + Phone + "\", Address:\""
				+ Address + "\", Role:\"" + Role + "\", Active:" + Active + ", Delete: false}";
	}
	//
	
	
}
