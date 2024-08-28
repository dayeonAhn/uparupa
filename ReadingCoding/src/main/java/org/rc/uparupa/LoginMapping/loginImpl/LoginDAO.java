package org.rc.uparupa.LoginMapping.loginImpl;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.rc.uparupa.SqlSessionFactoryBean;
import org.rc.uparupa.LoginMapping.LoginDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("loginDAO")
public class LoginDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// CRUD
	
	// 등록
	public void insertUser(LoginDTO dto) {
		mybatis.insert("LoginDAO.insertUser", dto);
		//mybatis.commit();
	}

	// 수정
	public void updateUser(LoginDTO dto) {
		//mybatis.update("UserDAO.updateUser", dto);
	}
	
	// id pwd 조회
	public LoginDTO getUser(LoginDTO dto) {
		return (LoginDTO)mybatis.selectOne("LoginDAO.getUser", dto);
	}
	
	// 삭제, 탈퇴
	public void deleteUser(LoginDTO dto) {
		//mybatis.delete("UserDAO.deleteUser", dto);
	}
	
	
	// 중복확인
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
