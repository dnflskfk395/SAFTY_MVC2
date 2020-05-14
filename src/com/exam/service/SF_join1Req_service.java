package com.exam.service;

import java.util.Map;

public class SF_join1Req_service {
	private String id;
	private String name;
	private String pw;
	private String cfPw;
	private String bdate;
	private String email;
	private String addr;
	private String pcode;
	private String gender;
	private String phone;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
 
	public String getCfPw() {
		return cfPw;
	}
	public void setCfPw(String cfPw) {
		this.cfPw = cfPw;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	//비밀번호와 비밀번호 확인값이 같은지 검사
	public boolean isPasswordEqual() {
		return pw != null && pw.equals(cfPw);
	}
	
	//view field check
	
	private void checkEmpty(Map<String, Boolean> errors, String value  , String fieldName) {
		if(value == null || value.isEmpty()) {
			//둘이 같은 애기, ==null 이랑 isEmpty()
			errors.put(fieldName, Boolean.TRUE);
		}
	}

	
	public void validate(Map<String, Boolean> errors) {
		checkEmpty(errors, id, "id");
		checkEmpty(errors, pw, "pw");
		checkEmpty(errors, cfPw, "cfPw");
		checkEmpty(errors, name, "name");
		checkEmpty(errors, email, "email");
		checkEmpty(errors, bdate, "bdate");
		checkEmpty(errors, addr, "addr");
		checkEmpty(errors, pcode, "pcode");
		checkEmpty(errors, gender, "gender");
		checkEmpty(errors, phone, "phone");
		
		
		if(!errors.containsKey("cfPw")) {
			if( !isPasswordEqual()) {
				errors.put("notEquals", Boolean.TRUE);
			}
		}
	}//validate end
	
	
}
