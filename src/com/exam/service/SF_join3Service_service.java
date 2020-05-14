package com.exam.service;

import java.util.Date;

import com.exam.dao.SF_join1_dao;
import com.exam.dao.SF_join3_dao;
import com.exam.dto.SF_join1_dto;
import com.exam.dto.SF_join3_dto;

import dao.Join1_DAO;

public class SF_join3Service_service {
		
	private SF_join3_dao join3Dao = new SF_join3_dao();
	//회원이 있는지 없는ㄴ지 부터
		public void join(SF_join3Req_service joinReq){
			
		SF_join3_dto member = join3Dao.selectById(joinReq.getId());
		
		if(member != null) {
			//현재 같은 아이디를 가진 회원이 존재함
			throw new RuntimeException();
		}
		
		join3Dao.addData(new SF_join3_dto(joinReq.getNumber(), joinReq.getName(), 
				joinReq.getId(), joinReq.getPw(), joinReq.getPhone(), 
				joinReq.getAddr(), joinReq.getPcode(), joinReq.getMan(), 
				joinReq.getEmail(),"3", new Date()));
		}//join()end
}
