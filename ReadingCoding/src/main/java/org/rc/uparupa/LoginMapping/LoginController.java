package org.rc.uparupa.LoginMapping;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {

	@Resource(name="loginService")
	private LoginService loginService;

	
	
	// 회원가입 폼페이지
	@RequestMapping(value="/login/joinMemForm.do")
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
		dto.setPhone(phone);
		dto.setEmail(email);
		
		loginService.insertUser(dto);
		
		
		return "redirect:/login/login.do";
	}
	
	
	
	
	// 로그인 링크보내기
		@RequestMapping(value="/login/login.do")
		public String getUserForm(LoginDTO dto, BindingResult result, HttpServletRequest request, Model model) throws IllegalStateException, IOException {
			
			HttpSession session = request.getSession();
			
			String viewName = "/";
			
			
			return "/login/login.jsp";
			
			
//			if(session.getAttribute("sessId") == null) {
//				return "/login/login.jsp";
//			}else {
//			    return "/";
//			}
		}
		
		
		//login행위
//		@PostMapping(value="/login.do")
//		public String getUser(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException {
//			HttpSession session = request.getSession();
//			
//			String viewName = "redirect:/";
//			System.out.println("#####"+dto.getId());
//			System.out.println("#####"+dto.getPwd());
//			//vo = userService.getUser(vo);
//			if(vo == null) {
//				session.setAttribute("msg", "회원정보가 존재하지 않습니다");
//				viewName = "redirect:/member/Login.jsp";
//			}else {
//				session.setAttribute("sessId", vo.getId());
//				session.setAttribute("sessName", vo.getName());
//				session.setAttribute("sessPhone", vo.getPhone());
//			}
//			
//			return viewName;
//		}
		
		
		// id chk
//		@RequestMapping(value="/idChk.do")
//		public boolean idChk(UserVO vo) throws IllegalStateException, IOException  {
//			
//			return userService.idChk(vo);
//			
//		}
	
	
	
	
	
	
	
}
