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
import com.exam.dto.SF_join2_dto;
import com.exam.security.SecurityUtil;

import vo.Join1_VO;
import vo.Join2_VO;

public class SF_join2_dao {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	SecurityUtil secUtil = new SecurityUtil();

	public SF_join2_dao() {
		conn = OracleXEConnection.getInstance().getConnection();
	}// 생성자 end

	// 멤버추가
	public void addData(SF_join2_dto vo) {
		
		sb.setLength(0);
		sb.append("insert into ORGANIZATION ");
		sb.append("values (?,?,?,?,?,?,?,?,?,?,?) ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getLinumber());
			pstmt.setString(2, vo.getMan());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getId());
			pstmt.setString(5, secUtil.encryptSHA256(vo.getPw()));
			pstmt.setString(6, vo.getPhone());
			pstmt.setString(7, vo.getAddr());
			pstmt.setString(8, vo.getPcode());
			pstmt.setString(9, vo.getEmail());
			pstmt.setString(10, vo.getGroup());
			pstmt.setTimestamp(11, new Timestamp(vo.getRegdate().getTime()));

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	public SF_join2_dto selectById(String id) {
		sb.setLength(0);
		sb.append("select * from SCOTT.ORGANIZATION ");
		sb.append("where OR_ID = ? ");

		SF_join2_dto member = null;

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			/*
			 * String name = rs.getString(2); String pw = rs.getString(3); String bdate =
			 * rs.getString(4); String email = rs.getString(5); String addr =
			 * rs.getString(6); int gender = rs.getInt(7);
			 */
			rs.next();
				

			member = new SF_join2_dto(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
					rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),rs.getString(10),
					toDate(rs.getTimestamp(11)));
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return member;

	}// selectById();

	private Date toDate(Timestamp date) {
		return date == null ? null : new Date(date.getTime());
	}
	
	
	
	public String pwCheck(String userID) {
		int rst = 0;
		sb.setLength(0);
		sb.append("select OR_PW from ORGANIZATION ");
		sb.append("where OR_ID = ? ");
		String pw = "";
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, userID);
		
			rs = pstmt.executeQuery();
			rs.next();
			
			pw = rs.getString("OR_PW");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} 
		return pw;
	}
	//사원 개인정보 수정- 비밀번호, 전화번호
	public void updateInfo(SF_join2_dto dto) {
		sb.setLength(0);
		sb.append("update ORGANIZATION ");
		sb.append("set OR_PW = ? ");
		sb.append("where OR_ID = ? ");
		
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
