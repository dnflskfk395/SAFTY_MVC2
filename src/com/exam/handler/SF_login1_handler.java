package com.exam.handler;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.dto.User;
import com.exam.security.SecurityUtil;
import com.exam.service.SF_login1Service_service;

public class SF_login1_handler implements Action{
	
	private static final String FORM_VIEW = "/safety/login/safetyLogin.jsp";
	private static final String RETURN_VIEW = "/safety/mainpage/main.jsp";
	SecurityUtil secUtil = new SecurityUtil();
	
	SF_login1Service_service loginService = new SF_login1Service_service();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req,resp);
		}else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req,resp);
		}else {
			resp.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED); //404인지 405인지 알려줌 
			return null;
		}
	}
	private String processForm(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		return FORM_VIEW;
	}
	
	private String trim(String str) { //공백문자 처리 
		return str == null? null:str.trim();
	}
	
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String id = trim(req.getParameter("id"));
		String password = secUtil.encryptSHA256(trim(req.getParameter("pw")));
		
		
		System.out.println("id : "+id+ "pw : "+password);
		
		Map<String, Boolean> errors =  new HashMap<String, Boolean>();
		req.setAttribute("errors", errors);
		
		if(id == null || id.isEmpty()) { //유효성 검사
			errors.put("id", Boolean.TRUE);
		}else if(password == null || password.isEmpty()) {
			errors.put("password", Boolean.TRUE);
		}
		
		if(!errors.isEmpty()) {//에러 걸린것
			return FORM_VIEW;
		}
		try {
			
			//모든 유효성 검사를 통과했을때
			HttpSession session = req.getSession();
			User user = loginService.login(id, password);
				
			/* req.getSession().setAttribute("authUser", user); */
			session.setAttribute("authUser", user);
			//authUser의 name,id, group 담겨있다 !
			
			
			return RETURN_VIEW;
			// TODO Auto-generated method stub
		} catch (RuntimeException e) { //에러 터졌을때 같이 runtimeexception으로 받음
			errors.put("pwNotEqual", Boolean.TRUE);
			return FORM_VIEW;
		}
	}



}

