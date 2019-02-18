package com.javalec.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDao {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	// 디비연결 해주기 위해 로직 처리
	public MemberDao() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB 연결실패: " + ex);
			return;
		}
	}

	// 회원가입=====================================================================================================
	public boolean memberJoin(MemberBean memberdata) throws SQLException {
		try {

			String sql = "INSERT INTO JOIN VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, memberdata.getMEMBER_ID());
			pstmt.setString(2, memberdata.getMEMBER_PW());
			pstmt.setString(3, memberdata.getMEMBER_NAME());
			pstmt.setString(4, memberdata.getMEMBER_NICK());
			pstmt.setString(5, memberdata.getMEMBER_EMAIL());
			pstmt.setString(6, memberdata.getMEMBER_COM());
			pstmt.setString(7, memberdata.getMEMBER_TEL());
			pstmt.setString(8, memberdata.getMEMBER_PHONE());
			pstmt.setString(9, memberdata.getMEMBER_HOMEPAGE());
			pstmt.setString(10, memberdata.getMEMBER_ADD());
			pstmt.setString(11, memberdata.getMEMBER_ADD1());
			pstmt.setString(12, memberdata.getMEMBER_MAIL());
			pstmt.setString(13, memberdata.getMEMBER_SMS());

			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return false;
	}

	// 로그인===========================================================
	public boolean memberLogin(String MEMBER_ID, String MEMBER_PW) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		String id = MEMBER_ID;
		String password = MEMBER_PW;

		ResultSet rs = null;

		try {
			Context context = new InitialContext();
			DataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/OracleDB");
			conn = dataSource.getConnection();

			String query = "SELECT * FROM JOIN WHERE MEMBER_ID=? and MEMBER_PW=?";
			pstmt = conn.prepareStatement(query);

			pstmt.setString(1, id);
			pstmt.setString(2, password);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				if (id.equals(rs.getString(1)) && password.equals(rs.getString(2))) {
					return true;
				} else {
					return false;
				}
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return false;

	}

	// 멤버목록========================================================
	public List getMemberList() {
		String sql = "SELECT * FROM JOIN";
		List memberlist = new ArrayList();

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				MemberBean boarddata = new MemberBean();

				boarddata.setMEMBER_ID(rs.getString("MEMBER_ID"));
				boarddata.setMEMBER_PW(rs.getString("MEMBER_PW"));
				boarddata.setMEMBER_NAME(rs.getString("MEMBER_NAME"));
				boarddata.setMEMBER_NICK(rs.getString("MEMBER_NICK"));
				boarddata.setMEMBER_EMAIL(rs.getString("MEMBER_EMAIL"));
				boarddata.setMEMBER_COM(rs.getString("MEMBER_COM"));
				boarddata.setMEMBER_TEL(rs.getString("MEMBER_TEL"));
				boarddata.setMEMBER_PHONE(rs.getString("MEMBER_PHONE"));
				boarddata.setMEMBER_HOMEPAGE(rs.getString("MEMBER_HOMEPAGE"));
				boarddata.setMEMBER_ADD(rs.getString("MEMBER_ADD"));
				boarddata.setMEMBER_ADD1(rs.getString("MEMBER_ADD1"));
				boarddata.setMEMBER_MAIL(rs.getString("MEMBER_MAIL"));
				boarddata.setMEMBER_SMS(rs.getString("MEMBER_SMS"));

				memberlist.add(boarddata);
			}

			return memberlist;
		} catch (Exception ex) {
			System.out.println("getDeatilMember �뿉�윭: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}

	// 멤버삭제========================================
	public boolean memberDelete(String Member_ID) {

		System.out.println("삭제 부분에 입성");
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;

		try {

			String query = "DELETE FROM JOIN WHERE Member_ID=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, Member_ID);
			result = pstmt.executeUpdate();
			if (result != 0) {
				return true;
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return false;
	}

	// 멤버정보==========================================
	public MemberBean memberInfo(String Member_ID) {
		String query = "SELECT * FROM JOIN WHERE Member_ID=?";

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, Member_ID);
			rs = pstmt.executeQuery();
			rs.next();

			MemberBean member = new MemberBean();
			member.setMEMBER_ID(rs.getString("Member_ID"));
			member.setMEMBER_PW(rs.getString("Member_PW"));
			member.setMEMBER_NAME(rs.getString("Member_NAME"));
			
			return member;
			
		} catch (Exception ex) {
			System.out.println("getDeatilMember �뿉�윭: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}

		return null;

	}

}