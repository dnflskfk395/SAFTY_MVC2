package com.exam.service;

import java.util.Map;

public class SF_join3Req_service {
	private String number;
	private String name;
	private String id;
	private String pw;
	private String cfPw;
	private String phone;
	private String addr;
	private String pcode;
	private String man;
	private String email;
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
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
	public String getCfPw() {
		return cfPw;
	}
	public void setCfPw(String cfPw) {
		this.cfPw = cfPw;
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
	public String getMan() {
		return man;
	}
	public void setMan(String man) {
		this.man = man;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
		checkEmpty(errors, number, "number");
		checkEmpty(errors, name, "name");
		checkEmpty(errors, id, "id");
		checkEmpty(errors, pw, "pw");
		checkEmpty(errors, cfPw, "cfPw");
		checkEmpty(errors, phone, "phone");
		checkEmpty(errors, addr, "addr");
		checkEmpty(errors, pcode, "pcode");
		checkEmpty(errors, man, "man");
		checkEmpty(errors, email, "email");
		
		
		if(!errors.containsKey("cfPw")) {
			if(!isPasswordEqual()) {
				errors.put("notEquals", Boolean.TRUE);
			}
		}
	}//validate end
}
