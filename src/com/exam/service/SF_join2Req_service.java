package com.exam.service;

import java.util.Map;

public class SF_join2Req_service {
	private String linumber;
	private String man;
	private String name;
	private String id;
	private String pw;
	private String cFpw;
	private String phone;
	private String addr;
	private String pcode;
	private String email;
	
	public String getLinumber() {
		return linumber;
	}
	public void setLinumber(String linumber) {
		this.linumber = linumber;
	}
	public String getMan() {
		return man;
	}
	public void setMan(String man) {
		this.man = man;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getcFpw() {
		return cFpw;
	}
	public void setcFpw(String cFpw) {
		this.cFpw = cFpw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	//비밀번호와 비밀번호 확인값이 같은지 검사
	public boolean isPasswordEqual() {
		return pw != null && pw.equals(cFpw);
	}
	
	//view field check
	
	private void checkEmpty(Map<String, Boolean> errors, String value  , String fieldName) {
		if(value == null || value.isEmpty()) {
			//둘이 같은 애기, ==null 이랑 isEmpty()
			errors.put(fieldName, Boolean.TRUE);
		}
	}
	
	public void validate(Map<String, Boolean> errors) {
		checkEmpty(errors, linumber, "linumber");
		checkEmpty(errors, man, "man");
		checkEmpty(errors, name, "name");
		checkEmpty(errors, id, "id");
		checkEmpty(errors, pw, "pw");
		checkEmpty(errors, cFpw, "cFpw");
		checkEmpty(errors, phone, "phone");
		checkEmpty(errors, addr, "addr");
		checkEmpty(errors, pcode, "pcode");
		checkEmpty(errors, email, "email");
		
		
		if(!errors.containsKey("cFpw")) {
			if(!isPasswordEqual()) {
				errors.put("notEquals", Boolean.TRUE);
			}
		}
	}//validate end

}
