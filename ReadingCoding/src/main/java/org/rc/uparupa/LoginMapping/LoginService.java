package org.rc.uparupa.LoginMapping;

import java.util.List;

public interface LoginService {

	void insertUser(LoginDTO dto);
	
	void updateUser(LoginDTO dto);
	
	public List<LoginDTO> selectUser(LoginDTO dto);
	void deleteUser(LoginDTO dto);
	
	public LoginDTO getUser(LoginDTO dto);
	
	public LoginDTO findId(LoginDTO dto);
	public LoginDTO findPwd(LoginDTO dto);
	void findPwdResult(LoginDTO dto);	
	
	boolean getIdChk(LoginDTO dto);
	boolean getNickChk(LoginDTO dto);
	boolean getEmailChk(LoginDTO dto);
	
	public LoginDTO kakaoEma(LoginDTO dto);
}
