package org.rc.uparupa.LoginMapping;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;


@Controller
public class LoginController {

	@Resource(name="loginServiceImpl")
	private LoginService loginService;

	
	
	//회원가입폼 페이지
	@GetMapping(value="login/joinMemForm.do")
	public String insertUserForm(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException { 
		
		HttpSession session = request.getSession();
		String viewName = "redirect:/";
		String LogChk = (String)session.getAttribute("sessEmail");
		
		if (LogChk != null) {
			viewName =  "/mainPage.jsp";
		}else {
			viewName = "joinMember.jsp";
		}
		return viewName;
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
		
		
		return "redirect:login.do";
	}
	
	
	
	// 로그인 페이지 이동
		@GetMapping(value="login/login.do")
		public String getUserForm(LoginDTO dto, BindingResult result, HttpServletRequest request, Model model) throws IllegalStateException, IOException {
			HttpSession session = request.getSession();
			String viewName = "redirect:/";
			
			String LogChk = (String)session.getAttribute("sessEmail");
			
			if (LogChk != null) {

				viewName =  "/mainPage.jsp";
			}else {
				
				viewName = "login.jsp";
			}
			return viewName;
		}
		
		
		//login행위
		@PostMapping(value="login/login.do")
		public String getUser(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException {
			HttpSession session = request.getSession();
			
			String viewName = "redirect:/";
			
			String id = (String)request.getParameter("joinId");
			String pwd = (String)request.getParameter("joinPwd");
			
			dto.setId(id);
			dto.setPwd(pwd);
			
			dto = loginService.getUser(dto);
			
			
			
			if(id.equals("rdcd") && pwd.equals("1234") ){
				
				session.setAttribute("sessAdminId", "rdcd");
				session.setAttribute("sessAdminName", "관리자");
				session.setAttribute("sessAdminPhone", "0101234");
				session.setAttribute("sessAdminEmail", "uparupa@papa.com");
				
				session.setAttribute("msg", "관리자 페이지로 이동합니다");
				viewName =  "redirect:/mainMngPage.do";
				
			}else if(dto == null) {
				session.setAttribute("msg", "회원정보가 존재하지 않습니다");
				viewName = "login.jsp";
				
			}else {
				session.setAttribute("sessId", dto.getId());
				session.setAttribute("sessName", dto.getName());
				session.setAttribute("sessPhone", dto.getPhone());
				session.setAttribute("sessEmail", dto.getEmail());
				
				viewName =  "/mainPage.jsp";
			}
			
			return viewName;
		}
		

		// 로그아웃 
		@GetMapping(value="logout.do")
		public String outUser(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException{
			
			HttpSession session = request.getSession();
			session.invalidate();
			return "/";
		}
		
		
		// 관리자 메인페이지
		@GetMapping(value="mainMngPage.do")
		public String adminMain(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException {
			HttpSession session = request.getSession();
			
			String viewName = "redirect:/";
			String LogChk = (String)session.getAttribute("sessAdminEmail");
			
			if (LogChk != null) {
				viewName =  "/adminmainMngPage.jsp";
				
			}else {
				viewName = "/";
			}
			return viewName;
				
		}
		
		// 관리자 맴버 리스트
		@GetMapping(value="memberList.do")
		public String adminMemList(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException {
			HttpSession session = request.getSession();
			
			String viewName = "redirect:/";
			String LogChk = (String)session.getAttribute("sessAdminEmail");
			
			if (LogChk != null) {
				viewName =  "admin/memberList.jsp";
			}else {
				viewName = "/";
			}
			
			List<LoginDTO> members = loginService.selectUser(dto);
			request.setAttribute("members",members);
			
			return viewName;
		}
		
		// 관리자맴버탈퇴
		@PostMapping(value="deleteMember.do")
		public String deleteUser(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException {
			HttpSession session = request.getSession();
			String viewName = "redirect:/";

			String emailArr[] = request.getParameterValues("members");
			
			for(int i = 0 ; i< emailArr.length ; i++) {
				dto.setEmail(emailArr[i]);
				loginService.deleteUser(dto);
			}

			viewName = "redirect:/memberList.do";
			session.setAttribute("msg","탈퇴시켰습니다");
			
			return viewName;
		}

		
		
		// id 찾기
		@GetMapping(value="findId.do")
		public String goFindId(LoginDTO dto, HttpServletRequest request)  throws IllegalStateException, IOException {
			
			return "login/findId.jsp";
		}
		
		
		// id 찾는 행위
		@PostMapping(value="login/findId.do")
		public String findId(LoginDTO dto, HttpServletRequest request)  throws IllegalStateException, IOException {
			HttpSession session = request.getSession();
			
			String viewName = "redirect:/";
			
			String name = (String)request.getParameter("findName");
			String email= (String)request.getParameter("findEmail");
			
			dto.setName(name);
			dto.setEmail(email);
			
			dto = loginService.findId(dto);
			request.setAttribute("dto", dto);
			
			if(dto != null) {
				viewName = "/login/findIdResult.jsp";
			}else {
				session.setAttribute("msg", "회원정보가 존재하지 않습니다");
				viewName = "redirect:findId.do";
			}
			return viewName;
		}
		
		
		// pwd 찾기
		@GetMapping(value="findPwd.do")
		public String goFindPwd(LoginDTO dto, HttpServletRequest request)  throws IllegalStateException, IOException {
			System.out.println("findpwd GET");
			return "login/findPwd.jsp";
		}
		
		// pwd 찾는 행위
		@PostMapping(value="login/findPwd.do")
		public String findPwd(LoginDTO dto, HttpServletRequest request)  throws IllegalStateException, IOException {
			HttpSession session = request.getSession();
			System.out.println("findpwd post");
			String viewName = "redirect:/";
			
			String id = (String)request.getParameter("findId");
			String name= (String)request.getParameter("findName");
			String email=(String)request.getParameter("findEmail");
			
			dto.setId(id);
			dto.setName(name);
			dto.setEmail(email);
			
			dto = loginService.findPwd(dto);
			request.setAttribute("dto", dto);
			
			if(dto == null) {
				session.setAttribute("msg", "회원정보가 존재하지 않습니다");
				viewName = "redirect:findPwd.do";
			}else {
				viewName = "redirect:findPwdResult.do?findEmail="+dto.getEmail();
			}
			return viewName;
		}
		
		
		// 비민번호 만들기 페이지 보내기
		@GetMapping(value="/login/findPwdResult.do")
		public String gofindPwdResult(LoginDTO dto, HttpServletRequest request)  throws IllegalStateException, IOException {
			HttpSession session = request.getSession();
			System.out.println("findpwd get 결과");
			String findE = request.getParameter("findEmail");
			request.setAttribute("findE", findE);
			
			
			return "findPwdResult.jsp";
		}
		
		// 새로운 비밀번호 만들기
		@PostMapping(value="login/findPwdResult.do")
		public String findPwdResult(LoginDTO dto, HttpServletRequest request)  throws IllegalStateException, IOException {
			HttpSession session = request.getSession();
			System.out.println("findpwd post 결과");
			String email=(String)request.getParameter("findEmail");
			String pwdResult=(String)request.getParameter("pwdResult");
			
			dto.setEmail(email);
			dto.setPwd(pwdResult);
			
			loginService.findPwdResult(dto);
			
			return "redirect:login.do";
		}
		

		// id chk (아이디 중복 확인)
		@PostMapping(value="/login/idChk.do")
		@ResponseBody
		public boolean getIdChk(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException  {
			HttpSession session = request.getSession();
			dto.setId(request.getParameter("id"));
			return loginService.getIdChk(dto);
		}		
		// nick chk
		@PostMapping(value="/login/nickChk.do")
		@ResponseBody
		public boolean getNickChk(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException  {
			HttpSession session = request.getSession();
			dto.setNickName(request.getParameter("nickNam"));
			return loginService.getNickChk(dto);
		}		
		// email chk
		@PostMapping(value="/login/emailChk.do")
		@ResponseBody
		public boolean getEmailChk(LoginDTO dto, HttpServletRequest request) throws IllegalStateException, IOException  {
			HttpSession session = request.getSession();
			dto.setEmail(request.getParameter("email"));
			return loginService.getEmailChk(dto);
		}
		
		
		
		
		
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		public String getAccessToken(String code) {
		    String accessToken = "";
		    String refreshToken = "";
		    String reqUrl = "https://kauth.kakao.com/oauth/token";

		    try{
		        URL url = new URL(reqUrl);
		        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		        
		        //필수헤더 셋팅
		        conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		        conn.setDoOutput(true); 

		        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		        StringBuilder sb = new StringBuilder();
		        
		        //필수 쿼리 파라미터 셋팅
		        sb.append("grant_type=authorization_code");
		        sb.append("&client_id=b26305eb6ef4340de79fb30b1b16a85a");
		        sb.append("&redirect_uri=http://localhost:9999/login/kakaoLogin.do");
		        sb.append("&code=").append(code);

		        bw.write(sb.toString());
		        bw.flush();

		        int responseCode = conn.getResponseCode();

		        BufferedReader br;
		        if (responseCode >= 200 && responseCode < 300) {
		            br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		        } else {
		            br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		        }

		        String line = "";
		        StringBuilder responseSb = new StringBuilder();
		        while((line = br.readLine()) != null){
		            responseSb.append(line);
		        }
		        String result = responseSb.toString();

		        JsonParser parser = new JsonParser();
		        JsonElement element = parser.parse(result);
		        accessToken = element.getAsJsonObject().get("access_token").getAsString();
		        refreshToken = element.getAsJsonObject().get("refresh_token").getAsString();

		        br.close();
		        bw.close();
		    }catch (Exception e){
		        e.printStackTrace();
		    }
		    return accessToken;
		}
		
		public HashMap<String, Object> getUserInfo(String accessToken) {
		    HashMap<String, Object> userInfo = new HashMap<>();
		    String reqUrl = "https://kapi.kakao.com/v2/user/me";
		    try{
		        URL url = new URL(reqUrl);
		        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		        conn.setRequestMethod("POST");
		        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
		        conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

		        int responseCode = conn.getResponseCode();

		        BufferedReader br;
		        if (responseCode >= 200 && responseCode <= 300) {
		            br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		        } else {
		            br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		        }

		        String line = "";
		        StringBuilder responseSb = new StringBuilder();
		        while((line = br.readLine()) != null){
		            responseSb.append(line);
		        }
		        String result = responseSb.toString();

		        JsonParser parser = new JsonParser();
		        JsonElement element = parser.parse(result);

		        JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
		        JsonObject kakaoAccount = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

		        String nickname = properties.getAsJsonObject().get("nickname").getAsString();
		        String email = kakaoAccount.getAsJsonObject().get("email").getAsString();

		        userInfo.put("nickname", nickname);
		        userInfo.put("email", email);

		        br.close();

		    }catch (Exception e){
		        e.printStackTrace();
		    }
		    return userInfo;
		}
		@RequestMapping(value="login/kakaoLogin.do")
		public String kakaoLogin(@RequestParam String code, LoginDTO dto, HttpServletRequest request) {
			HttpSession session = request.getSession();
			String viewName = "redirect:/";
			
			// token 받기
			String accessToken = this.getAccessToken(code);
			
			// 사용자 정보받기
			Map<String, Object> userInfo = this.getUserInfo(accessToken);

	        String email = (String)userInfo.get("email");
	        String nickname = (String)userInfo.get("nickname");


	        dto.setEmail(email);

	        if(loginService.getEmailChk(dto)) {
	        	
	        	dto = loginService.kakaoEma(dto);
	        	
	        	session.setAttribute("sessId", dto.getId());
				session.setAttribute("sessName", dto.getName());
				session.setAttribute("sessPhone", dto.getPhone());
	        	session.setAttribute("sessEmail", dto.getEmail());
	        	
				viewName =  "mainPage.jsp";
	        }else {
	        	viewName = "redirect:joinMemForm.do";
	        }
	        
	        return viewName;
		}
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	
	
	
}
