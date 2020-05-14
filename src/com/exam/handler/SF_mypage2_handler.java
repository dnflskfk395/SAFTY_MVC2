package com.exam.handler;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.dao.SF_join1_dao;
import com.exam.dao.SF_join2_dao;
import com.exam.dao.SF_join3_dao;
import com.exam.dto.SF_join1_dto;
import com.exam.dto.SF_join2_dto;
import com.exam.dto.SF_join3_dto;
import com.exam.dto.User;


public class SF_mypage2_handler implements Action{
	private static final String FORM_VIEW = "/safety/myPage/myPage_info.jsp";
	private static final String RETURN_VIEW = "/safety/mainpage/main.jsp";
	
	
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
		
		return FORM_VIEW;
	}
	private String trim(String str) { //공백문자 처리 
		return str == null? null:str.trim();
	}
	private String processSubmit(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		
		User user = (User)req.getSession().getAttribute("authUser");
		
		String group = user.getGroup();
		String password = trim(req.getParameter("password"));
		
		
		
		
		if(group == "1" || group.equals("1")) {
			SF_join1_dao dao = new SF_join1_dao();
			SF_join1_dto dto = new SF_join1_dto();
			
			dto.setId(user.getId());
			dto.setPw(password);
			dao.updateInfo(dto);
			
			return RETURN_VIEW;
			
		}else if(group == "2" || group.equals("2")) {
			SF_join2_dao dao = new SF_join2_dao();
			SF_join2_dto dto = new SF_join2_dto();
		
			dto.setId(user.getId());
			dto.setPw(password);
			dao.updateInfo(dto);
			
			return RETURN_VIEW;
			
		}else if (group == "3" || group.equals("3")) {
			SF_join3_dao dao = new SF_join3_dao();
			SF_join3_dto dto = new SF_join3_dto();
			
			dto.setId(user.getId());
			dto.setPw(password);
			dao.updateInfo(dto);
			
			return RETURN_VIEW;
			
		}else {
			return FORM_VIEW;
		}
		
		
		
	}
	
		
	
	}

