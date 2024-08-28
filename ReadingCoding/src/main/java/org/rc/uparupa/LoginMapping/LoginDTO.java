package org.rc.uparupa.LoginMapping;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

//@Getter
//@Setter
public class LoginDTO {

	private String id;
	private String profile;
	private String pwd;
	private String name;
	private String nickName;
	private String phone;
	private String email;
	private Date regDate;
	
	
	public String getId() {
		return id;
	}
	public String getProfile() {
		return profile;
	}
	public String getPwd() {
		return pwd;
	}
	public String getName() {
		return name;
	}
	public String getNickName() {
		return nickName;
	}
	public String getPhone() {
		return phone;
	}
	public String getEmail() {
		return email;
	}
	public Date getRegDate() {
		return regDate;
	}
	
	
	public void setId(String id) {
		this.id = id;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}
