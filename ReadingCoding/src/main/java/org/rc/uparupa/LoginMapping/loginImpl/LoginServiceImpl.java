package org.rc.uparupa.LoginMapping.loginImpl;

import java.util.List;

import javax.annotation.Resource;
import org.rc.uparupa.LoginMapping.LoginDTO;
import org.rc.uparupa.LoginMapping.LoginService;
import org.springframework.stereotype.Service;


//@Service("loginService")
@Service
public class LoginServiceImpl implements LoginService {
	
	@Resource(name="loginDAO")
	private LoginDAO loginDAO;
	
	public LoginServiceImpl() {
		
	}
	
	@Override
	public void insertUser(LoginDTO dto) {
		loginDAO.insertUser(dto);
	}
	
	@Override
	public void updateUser(LoginDTO dto) {
		loginDAO.updateUser(dto);
	}

	@Override
	public List<LoginDTO> selectUser(LoginDTO dto) {
		return loginDAO.selectUser(dto); 
	}
	@Override
	public void deleteUser(LoginDTO dto) {
		loginDAO.deleteUser(dto);
	}
	
	@Override
	public LoginDTO getUser(LoginDTO dto) {
		return loginDAO.getUser(dto);
	}
	
	@Override
	public LoginDTO findId(LoginDTO dto) {
		return loginDAO.findId(dto);
	}
	
	@Override
	public LoginDTO findPwd(LoginDTO dto) {
		return loginDAO.findPwd(dto);
	}
	
	@Override
	public void findPwdResult(LoginDTO dto) {
		loginDAO.findPwdResult(dto);
	}
	
	
	@Override
	public boolean getIdChk(LoginDTO dto) {
		LoginDTO tempDTO = loginDAO.getIdChk(dto);
		boolean isDup = false;
		
		if(tempDTO == null) {
			isDup = false;
		}else {
			isDup = true;
		}
		return isDup;
	}
	@Override
	public boolean getNickChk(LoginDTO dto) {
		LoginDTO nickDTO = loginDAO.getNickChk(dto);
		boolean isNick = false;
		
		if(nickDTO == null) {
			isNick = false;
		}else {
			isNick = true;
		}
		return isNick;
	}
	@Override
	public boolean getEmailChk(LoginDTO dto) {
		LoginDTO emaDTO = loginDAO.getEmailChk(dto);
		boolean isEma = false;
		if(emaDTO == null) {
			isEma = false;
		}else {
			isEma = true;
		}
		return isEma;
	}
	
	@Override
	public LoginDTO kakaoEma(LoginDTO dto) {
		return loginDAO.getEmailChk(dto);
	}

}
