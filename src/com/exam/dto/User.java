package com.exam.dto;

public class User {
		private String id;
		private String name;
		private String group;
		private String pw;
		private String tel;
		private String email;
		
		
		public User() {
			// TODO Auto-generated constructor stub
		};
		
		



		public User(String id, String name, String group, String pw, String tel, String email) {
			super();
			this.id = id;
			this.name = name;
			this.group = group;
			this.pw = pw;
			this.tel = tel;
			this.email = email;
		}


		


		public String getTel() {
			return tel;
		}





		public void setTel(String tel) {
			this.tel = tel;
		}





		public String getEmail() {
			return email;
		}





		public void setEmail(String email) {
			this.email = email;
		}





		public String getPw() {
			return pw;
		}



		public void setPw(String pw) {
			this.pw = pw;
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

		public String getGroup() {
			return group;
		}

		public void setGroup(String group) {
			this.group = group;
		}
		
		
		
		
}
