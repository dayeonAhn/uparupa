package org.rc.uparupa.LoginMapping;

import org.rc.uparupa.LoginMapping.loginImpl.LoginDAO;

public interface LoginService {

	void insertUser(LoginDTO dto);
	
	void updateUser(LoginDTO dto);
	
	void deleteUser(LoginDTO dto);
	
	public LoginDTO getUser(LoginDTO dto);
	
	boolean getIdChk(LoginDTO dto);
	boolean getNickChk(LoginDTO dto);
	boolean getEmailChk(LoginDTO dto);
}
