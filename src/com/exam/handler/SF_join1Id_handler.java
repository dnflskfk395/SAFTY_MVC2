package com.exam.handler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SF_join1Id_handler implements Action{
	
	private static final String VIEW = "/safety/SignUp/idCheck1.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		if(req.getMethod().equalsIgnoreCase("GET")) {
			//소문자,대문자 둘다 인식
			return processForm(req, resp); //joinForm을 바로 보여주는 형태로 됌
		}else if(req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req,resp);
		}else { //에러날 경우 
			resp.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED); //405에러
			return null;
		}
	}//process end

	private String processForm(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		return VIEW;
	}
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		return VIEW;
	}
}
