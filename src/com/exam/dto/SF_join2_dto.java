package com.exam.dto;

import java.util.Date;

public class SF_join2_dto {
	private String linumber;
	private String man;
	private String name;
	private String id;
	private String pw;
	private String phone;
	private String addr;
	private String pcode;
	private String email;
	private String group;
	private Date regdate;
	
	public SF_join2_dto() {
		// TODO Auto-generated constructor stub
	}





	public SF_join2_dto(String linumber, String man, String name, String id, String pw, String phone, String addr,
			String pcode, String email, String group, Date regdate) {
		super();
		this.linumber = linumber;
		this.man = man;
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.phone = phone;
		this.addr = addr;
		this.pcode = pcode;
		this.email = email;
		this.group = group;
		this.regdate = regdate;
	}





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
	};
	
	// 로그인시 비밀번호 check
		// 여기서 체크해서 통과하는 사람만, 너는 통과 했으니, 웹페이지에 담을수 있어~~: userDto
		public boolean matchPassword(String pw) {

			return this.pw.equals(pw); // 이걸 통과하는 사람만 userdto에 담도록
		}
	
	
	
}
