package com.exam.handler;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.service.SF_join1Req_service;
import com.exam.service.SF_join1Service_service;
import com.exam.service.SF_join2Req_service;
import com.exam.service.SF_join2Service_service;

public class SF_join2_handler implements Action{
	
	private static final String VIEW = "/safety/SignUp/join3_2.jsp";
	private SF_join2Service_service joinService = new SF_join2Service_service();
	
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
	}//처음에 눌렀을때 viewPage
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		SF_join2Req_service joinReq = new SF_join2Req_service();
		joinReq.setAddr(req.getParameter("addr1")+req.getParameter("addr2")
		+req.getParameter("addr3")+req.getParameter("addr4"));
		joinReq.setcFpw(req.getParameter("password2"));
		joinReq.setEmail(req.getParameter("email1")+"@"+req.getParameter("email_select"));
		joinReq.setId(req.getParameter("userId"));
		joinReq.setLinumber(req.getParameter("groupNumber"));
		joinReq.setMan(req.getParameter("groupName"));
		joinReq.setName(req.getParameter("name"));
		joinReq.setPcode(req.getParameter("pcode"));
		joinReq.setPhone(req.getParameter("hp1")+req.getParameter("hp2")+req.getParameter("hp3"));
		joinReq.setPw(req.getParameter("password1"));
		
		//에러담을 객체
		Map<String, Boolean> errors = new HashMap<String, Boolean>();
		
		//유효성 검사 수행
		joinReq.validate(errors);
		req.setAttribute("errors", errors);
		
		if(!errors.isEmpty()) {
			return VIEW;
		}
		try {
			joinService.join(joinReq);
			return "/safety/SignUp/join4.jsp";
			
		}catch (Exception e) {
			errors.put("duplicated", Boolean.TRUE);
			return VIEW;
		}
		
		
	}
}
