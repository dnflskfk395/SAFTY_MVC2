package com.exam.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import com.exam.connection.OracleXEConnection;
import com.exam.dao.SF_join1_dao;
import com.exam.dao.SF_join2_dao;
import com.exam.dao.SF_join3_dao;
import com.exam.dto.SF_join1_dto;
import com.exam.dto.SF_join2_dto;
import com.exam.dto.SF_join3_dto;
import com.exam.dto.User;
import com.sun.corba.se.spi.ior.MakeImmutable;

import dao.Join1_DAO;

public class SF_login1Service_service {
		
	private SF_join1_dao dao = new SF_join1_dao();
	private SF_join2_dao dao2 = new SF_join2_dao();
	private SF_join3_dao dao3 = new SF_join3_dao();
	
	public User login(String id, String password) {
		SF_join1_dto member = dao.selectById(id);
		SF_join2_dto member2 = dao2.selectById(id);
		SF_join3_dto member3 = dao3.selectById(id);
		
		if( member != null && member2 == null && member3 == null ) {
			return new User(member.getId(), member.getName(), member.getGroup(), member.getPw(), member.getPhone(), member.getEmail());
		}else if(member2 != null && member == null && member3 == null) {
			return new User(member2.getId(), member2.getName(), member2.getGroup() , member2.getPw(), member2.getPhone(), member2.getEmail());
			
		}else if(member3 != null && member2 == null && member == null) {
			return new User(member3.getId(), member3.getName(), member3.getGroup(), member3.getPw(), member3.getPhone(), member3.getEmail());		
		}else {
			throw new RuntimeException();
		}
		
	}

	
	
}
