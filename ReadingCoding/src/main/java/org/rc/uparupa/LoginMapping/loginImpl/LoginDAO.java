package org.rc.uparupa.LoginMapping.loginImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.rc.uparupa.LoginMapping.LoginDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("loginDAO")
public class LoginDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// CRUD
	
	// �벑濡�
	public void insertUser(LoginDTO dto) {
		mybatis.insert("LoginDAO.insertUser", dto);
		//mybatis.commit();
	}

	// �닔�젙
	public void updateUser(LoginDTO dto) {
		//mybatis.update("UserDAO.updateUser", dto);
	}
	
	// id pwd 議고쉶
	public LoginDTO getUser(LoginDTO dto) {
		return (LoginDTO)mybatis.selectOne("LoginDAO.getUser", dto);
	}
	
	// �쉶�썝 list 議고쉶
	public List<LoginDTO> selectUser(LoginDTO dto) {
		return mybatis.selectList("LoginDAO.selectUser",dto);
	}
	// �궘�젣, �깉�눜
	public void deleteUser(LoginDTO dto) {
		mybatis.delete("LoginDAO.deleteUser", dto);
	}
	
	// �븘�씠�뵒 李얘린
	public LoginDTO findId(LoginDTO dto) {
		return (LoginDTO)mybatis.selectOne("LoginDAO.findId",dto);
	}
	
	// 鍮꾨�踰덊샇 李얘린
		public LoginDTO findPwd(LoginDTO dto) {
		return (LoginDTO)mybatis.selectOne("LoginDAO.findPwd",dto);
	}

	// 鍮꾨�踰덊샇 �깉濡� �닔�젙
		public void findPwdResult(LoginDTO dto) {
			mybatis.update("LoginDAO.findPwdResult",dto);
	}
		
	
	// 以묐났�솗�씤
	public LoginDTO getIdChk(LoginDTO dto) {
		return (LoginDTO)mybatis.selectOne("LoginDAO.getIdChk", dto);
	}
	public LoginDTO getNickChk(LoginDTO dto) {
		return (LoginDTO)mybatis.selectOne("LoginDAO.getNickChk", dto);
	}
	public LoginDTO getEmailChk(LoginDTO dto) {
		return (LoginDTO)mybatis.selectOne("LoginDAO.getEmailChk", dto);
	}

	
}
