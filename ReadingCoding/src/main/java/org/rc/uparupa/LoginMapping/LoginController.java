package org.rc.uparupa.LoginMapping;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {

	@Resource(name="loginService")
	private LoginService loginService;

	
	
	// 회원가입 폼페이지
	@GetMapping(value="/login/joinMemForm.do")
	public String insertUserForm(LoginDTO dto, BindingResult result, Model model) throws IllegalStateException, IOException { 
		//boardDAO.insertBoard(vo);
		
		return "/login/joinMember.jsp";
	}
	
	// 회원가입
	@PostMapping(value="/login/joinMember.do")
	public String insertUser(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException { 
	
		String id = (String)request.getParameter("joinId");
		String pwd = (String)request.getParameter("joinPwd");
		String name = (String)request.getParameter("joinName");
		String nickName = (String)request.getParameter("joinNick");
		String phone = (String)request.getParameter("joinPhone");
		String email = (String)request.getParameter("joinEmail");
		
		dto.setId(id);
		dto.setPwd(pwd);
		dto.setName(name);
		dto.setNickName(nickName);
		dto.setPhone(phone);
		dto.setEmail(email);
		
		loginService.insertUser(dto);
		
		
		return "redirect:/login/login.do";
	}

		
		
	
	
	
	
	
	
	
}
