package com.exam.dao;

import java.sql.Connection;   
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

import com.exam.connection.OracleXEConnection;

import com.exam.dto.SF_join1_dto;
import com.exam.security.SecurityUtil;

import vo.Join1_VO;

public class SF_join1_dao {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	SecurityUtil secUtil = new SecurityUtil();

	public SF_join1_dao() {
		conn = OracleXEConnection.getInstance().getConnection();
	}// �깮�꽦�옄 end

//硫ㅻ쾭異붽�
	public void addData(SF_join1_dto vo) {
		
		sb.setLength(0);
		sb.append("insert into ORDINARY_PEOPLE ");
		sb.append("values (?,?,?,?,?,?,?,?,?,?,?) ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, secUtil.encryptSHA256(vo.getPw()));
			pstmt.setString(4, vo.getBdate());
			pstmt.setString(5, vo.getEmail());
			pstmt.setString(6, vo.getAddr());
			pstmt.setString(7, vo.getPcode());
			pstmt.setString(8, vo.getGender());
			pstmt.setString(9, vo.getPhone());
			pstmt.setString(10, vo.getGroup());
			pstmt.setTimestamp(11, new Timestamp(vo.getRegdate().getTime()));

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
//addData() end
//회원존재여부 체크
	public SF_join1_dto selectById(String id) {
		sb.setLength(0);
		sb.append("select * from SCOTT.ORDINARY_PEOPLE ");
		sb.append("where OP_ID = ? ");
		
		SF_join1_dto member = null;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
	
			while(rs.next()) {
				
			
			member = new SF_join1_dto(rs.getString(1), rs.getString(2), rs.getString(3), 
					rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
					rs.getString(8), rs.getString(9), rs.getString(10), toDate(rs.getTimestamp(11)));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return member;
	}// selectById();
	
	private Date toDate(Timestamp date) {
		return date == null?null: new Date(date.getTime());
	}

	public boolean isExist(String id, String email) {
		sb.setLength(0);
		sb.append("select * from ORDINARY_PEOPLE ");
		sb.append("where OP_ID = ? and OP_EMAIL = ? ");

		boolean isOk = false;

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();

			isOk = rs.next(); // �븳以꾩씠�땲源� rs.next濡� 諛쏆쓬
								// �엳�뒗吏� �뾾�뒗吏�留� �븘�슂(議댁옱�뿬遺�留� �뙆�븙)�뮘 由ы꽩
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
		return isOk;
	}// isExit() end

	 
			
	
	
		public String pwCheck(String userID) {
			int rst = 0;
			sb.setLength(0);
			sb.append("select OP_PW from ORDINARY_PEOPLE ");
			sb.append("where OP_ID = ? ");
			
			String pw = "";
			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, userID);
			
				rs = pstmt.executeQuery();
				rs.next();
				
				pw =  rs.getString("OP_PW");

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}
			return pw;
		}
		//사원 개인정보 수정- 비밀번호, 전화번호
				public void updateInfo(SF_join1_dto dto) {
					sb.setLength(0);
					sb.append("update ORDINARY_PEOPLE ");
					sb.append("set OP_PW = ? ");
					sb.append("where OP_ID = ? ");
					
					try {
						pstmt = conn.prepareStatement(sb.toString());
						pstmt.setString(1, secUtil.encryptSHA256(dto.getPw()));
						pstmt.setString(2, dto.getId());
					
						
						pstmt.executeUpdate();
						
						
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}//updateInfo() end
		

}
