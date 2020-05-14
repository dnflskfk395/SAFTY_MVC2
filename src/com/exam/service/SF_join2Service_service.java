package com.exam.service;

import java.util.Date;

import com.exam.dao.SF_join1_dao;
import com.exam.dao.SF_join2_dao;
import com.exam.dto.SF_join1_dto;
import com.exam.dto.SF_join2_dto;

import dao.Join1_DAO;

public class SF_join2Service_service {
		
	private SF_join2_dao join2Dao = new SF_join2_dao();
	//회원이 있는지 없는지 부터
		public void join(SF_join2Req_service joinReq){
			
		SF_join2_dto member = join2Dao.selectById(joinReq.getId());
		
		if(member != null) {
			//현재 같은 아이디를 가진 회원이 존재함
			throw new RuntimeException();
		}
		
		join2Dao.addData(new SF_join2_dto(joinReq.getLinumber(), joinReq.getMan(), 
				joinReq.getName(), joinReq.getId(), joinReq.getPw(),
				joinReq.getPhone(), joinReq.getAddr(), joinReq.getPcode(), 
				joinReq.getEmail(), "2" , new Date()));
		
		}//join()end
}
