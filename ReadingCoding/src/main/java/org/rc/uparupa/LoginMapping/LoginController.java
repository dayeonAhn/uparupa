package org.rc.uparupa.LoginMapping;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {

	

	// 회원가입 폼페이지
//	@RequestMapping(value="/joinMemForm.do")
//	public String insertUserForm(LoginDTO dto, BindingResult result, Model model) throws IllegalStateException, IOException { 
//		//boardDAO.insertBoard(vo);
//		
//		if (result.hasErrors()) {
//	        // 유효성 검증 실패 시, 다시 회원가입 페이지로 돌아감
//	        model.addAttribute("errorMessage", "회원 정보 입력에 오류가 있습니다. 다시 확인해주세요.");
//	        return "/member/joinMember.jsp";
//	    }
//
//		  try {
//		        userService.insertUser(vo);
//		        return "redirect:/login/login.jsp";
//
//		    } catch (Exception e) {
//		        // 예외 발생 시
//		        model.addAttribute("errorMessage", "시스템 오류가 발생했습니다. 관리자에게 문의하세요.");
//		        return "login/joinMember.jsp";
//		    }
//	}
	
	// 회원가입
	@GetMapping(value="/login/joinMember.do")
	public String insertUser(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException { 
	
		    
		   return "/login/joinMember.jsp";
	}
	
	
	
	
	// 로그인 링크보내기
		@RequestMapping(value="/login/login.do")
		public String getUserForm(LoginDTO dto, BindingResult result, HttpServletRequest request, Model model) throws IllegalStateException, IOException {
			
			HttpSession session = request.getSession();
			
			String viewName = "/";
			System.out.println("#########");
			
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
