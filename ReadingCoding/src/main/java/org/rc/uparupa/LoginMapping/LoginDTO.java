package org.rc.uparupa.LoginMapping;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginDTO {

	private String id;
	private int seq;
	private String profile;
	private String pwd;
	private String name;
	private String nickName;
	private String phone;
	private String email;
	private Date regDate;
}
