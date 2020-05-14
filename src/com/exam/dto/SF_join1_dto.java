package com.exam.dto;

import java.util.Date;

public class SF_join1_dto {
	private String id;
	private String name;
	private String pw;
	private String bdate;
	private String email;
	private String addr;
	private String pcode;
	private String gender;
	private String phone;
	private String group;
	private Date regdate;

	public SF_join1_dto() {
		// TODO Auto-generated constructor stub
	}



	public SF_join1_dto(String id, String name, String pw, String bdate, String email, String addr, String pcode,
			String gender, String phone, String group, Date regdate) {
		super();
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.bdate = bdate;
		this.email = email;
		this.addr = addr;
		this.pcode = pcode;
		this.gender = gender;
		this.phone = phone;
		this.group = group;
		this.regdate = regdate;
	}

	

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



	public String getGroup() {
		return group;
	}



	public void setGroup(String group) {
		this.group = group;
	}



	public Date getRegdate() {
		return regdate;
	}



	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}



	// 로그인시 비밀번호 check
	// 여기서 체크해서 통과하는 사람만, 너는 통과 했으니, 웹페이지에 담을수 있어~~: userDto
	public boolean matchPassword(String pw) {

		return this.pw.equals(pw); // 이걸 통과하는 사람만 userdto에 담도록
	}

}
