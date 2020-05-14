package com.exam.service;

import java.util.Date;

import com.exam.dao.SF_join1_dao;
import com.exam.dto.SF_join1_dto;

import dao.Join1_DAO;

public class SF_join1Service_service {
		
	private  SF_join1_dao join1Dao = new SF_join1_dao();
	
	
	//회원이 있는지 없는지 부터
		public void join(SF_join1Req_service joinReq){
			
		SF_join1_dto member = join1Dao.selectById(joinReq.getId());
		
		if(member != null) {
			//현재 같은 아이디를 가진 회원이 존재함
			throw new RuntimeException();
		}
		
		join1Dao.addData(new SF_join1_dto(joinReq.getId(), joinReq.getName(), joinReq.getPw(), joinReq.getBdate(),
				joinReq.getEmail(), joinReq.getAddr(), joinReq.getPcode(),
				joinReq.getGender(), joinReq.getPhone(),"1",new Date()));
		
		}//join()end
}
