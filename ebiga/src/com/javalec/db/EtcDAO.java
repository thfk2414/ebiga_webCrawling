package com.javalec.db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.sql.DataSource;

import com.javalec.command.ActionForward;

public class EtcDAO {

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public EtcDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB에 접근하지 못했습니다. : " + ex);
			return;
		}
	}

	public ArrayList<EtcBean> getSeoul() throws Exception {
		ArrayList<EtcBean> searchlist = new ArrayList<EtcBean>();
		String sql = "SELECT * FROM SEARCH WHERE ADDRESS LIKE '서울%'";

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				EtcBean etcbean = new EtcBean();
				etcbean.setBRANCHNAME(rs.getString("BRANCHNAME"));
				etcbean.setADDRESS(rs.getString("ADDRESS"));
				etcbean.setTEL(rs.getString("TEL"));
				searchlist.add(etcbean);
			}
			return searchlist;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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

	public ArrayList<EtcBean> getGwangju() throws Exception {
		ArrayList<EtcBean> searchlist = new ArrayList<EtcBean>();
		String sql = "SELECT * FROM SEARCH WHERE ADDRESS LIKE '광주%'";

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				EtcBean etcbean = new EtcBean();
				etcbean.setBRANCHNAME(rs.getString("BRANCHNAME"));
				etcbean.setADDRESS(rs.getString("ADDRESS"));
				etcbean.setTEL(rs.getString("TEL"));
				searchlist.add(etcbean);
			}

			return searchlist;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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

	public ArrayList<EtcBean> getJeju() throws Exception {
		ArrayList<EtcBean> searchlist = new ArrayList<EtcBean>();
		String sql = "SELECT * FROM SEARCH WHERE ADDRESS LIKE '제주%'";

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				EtcBean etcbean = new EtcBean();
				etcbean.setBRANCHNAME(rs.getString("BRANCHNAME"));
				etcbean.setADDRESS(rs.getString("ADDRESS"));
				etcbean.setTEL(rs.getString("TEL"));
				searchlist.add(etcbean);
			}

			return searchlist;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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

	public ArrayList<EtcBean> getDaegu() throws Exception {
		ArrayList<EtcBean> searchlist = new ArrayList<EtcBean>();
		String sql = "SELECT * FROM SEARCH WHERE ADDRESS LIKE '대구%'";

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				EtcBean etcbean = new EtcBean();
				etcbean.setBRANCHNAME(rs.getString("BRANCHNAME"));
				etcbean.setADDRESS(rs.getString("ADDRESS"));
				etcbean.setTEL(rs.getString("TEL"));
				searchlist.add(etcbean);
			}

			return searchlist;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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

	public ArrayList<EtcBean> getDaejeon() throws Exception {
		ArrayList<EtcBean> searchlist = new ArrayList<EtcBean>();
		String sql = "SELECT * FROM SEARCH WHERE ADDRESS LIKE '대전%'";

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				EtcBean etcbean = new EtcBean();
				etcbean.setBRANCHNAME(rs.getString("BRANCHNAME"));
				etcbean.setADDRESS(rs.getString("ADDRESS"));
				etcbean.setTEL(rs.getString("TEL"));
				searchlist.add(etcbean);
			}

			return searchlist;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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

	public ArrayList<EtcBean> getBusan() throws Exception {
		ArrayList<EtcBean> searchlist = new ArrayList<EtcBean>();
		String sql = "SELECT * FROM SEARCH WHERE ADDRESS LIKE '부산%'";

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {

				EtcBean etcbean = new EtcBean();
				String branchName = rs.getString("BRANCHNAME");
				String Address = rs.getString("ADDRESS");
				String tel = rs.getString("TEL");
				etcbean.setBRANCHNAME(branchName);
				etcbean.setADDRESS(Address);
				etcbean.setTEL(tel);
				searchlist.add(etcbean);
			}

			return searchlist;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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

	public ArrayList<EtcBean> getUlsan() throws Exception {
		ArrayList<EtcBean> searchlist = new ArrayList<EtcBean>();
		String sql = "SELECT * FROM SEARCH WHERE ADDRESS LIKE '울산%'";

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				EtcBean etcbean = new EtcBean();
				etcbean.setBRANCHNAME(rs.getString("BRANCHNAME"));
				etcbean.setADDRESS(rs.getString("ADDRESS"));
				etcbean.setTEL(rs.getString("TEL"));
				searchlist.add(etcbean);
			}

			return searchlist;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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

	public ArrayList<EtcBean> getIncheon() throws Exception {
		ArrayList<EtcBean> searchlist = new ArrayList<EtcBean>();
		String sql = "SELECT * FROM SEARCH WHERE ADDRESS LIKE '인천%'";

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				EtcBean etcbean = new EtcBean();
				etcbean.setBRANCHNAME(rs.getString("BRANCHNAME"));
				etcbean.setADDRESS(rs.getString("ADDRESS"));
				etcbean.setTEL(rs.getString("TEL"));
				searchlist.add(etcbean);
			}

			return searchlist;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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

	public ArrayList<EtcBean> getselect() throws Exception {
		ArrayList<EtcBean> searchlist = new ArrayList<EtcBean>();
		String sql = "SELECT * FROM SEARCH";

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				EtcBean etcbean = new EtcBean();
				String branchName = rs.getString("BRANCHNAME");
				String Address = rs.getString("ADDRESS");
				String tel = rs.getString("TEL");
				etcbean.setBRANCHNAME(branchName);
				etcbean.setADDRESS(Address);
				etcbean.setTEL(tel);
				searchlist.add(etcbean);

			}

			return searchlist;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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

	public ArrayList<EtcBean> search(String ctx) throws Exception {
		ArrayList<EtcBean> searchlist = new ArrayList<EtcBean>();

			String sql = "SELECT * FROM YEAR_SALE WHERE YEAR LIKE 'YEAR_2013'";
			
			try {
				
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();

				

				while (rs.next()) {

					EtcBean etcbean = new EtcBean();

					String GWANGJU = rs.getString("GWANGJU");
					System.out.println(GWANGJU);
					String BUSAN = rs.getString("BUSAN");
					System.out.println(BUSAN);
					String DAEGU = rs.getString("DAEGU");
					System.out.println(DAEGU);
					String DAEJEON = rs.getString("DAEJEON");
					System.out.println(DAEJEON);
					String ULSAN = rs.getString("ULSAN");
					System.out.println(ULSAN);
					String INCHEON = rs.getString("INCHEON");
					System.out.println(INCHEON);
					String JEJU = rs.getString("JEJU");
					System.out.println(JEJU);
					String SEOUL= rs.getString("SEOUL");
					System.out.println(SEOUL);

					etcbean.setGWANGJU(GWANGJU);
					etcbean.setBUSAN(BUSAN);
					etcbean.setDAEGU(DAEGU);
					etcbean.setDAEJEON(DAEJEON);
					etcbean.setULSAN(ULSAN);
					etcbean.setINCHEON(INCHEON);
					etcbean.setJEJU(JEJU);
					etcbean.setSEOUL(SEOUL);
					searchlist.add(etcbean);

				}
				return searchlist;

			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				if (rs != null)try {rs.close();} catch (SQLException ex) {}
				if (pstmt != null)try {pstmt.close();} catch (SQLException ex) {}
			}
		return null;
	}
	
	public void selectstore(String storeName, String tel, String address) {
		{
			
			ArrayList<EtcBean> searchlist = new ArrayList<EtcBean>();

			String sql = "INSERT INTO SEARCH VALUES(?,?,?)";
			System.out.println("실행되긴 함?");
			
			try {
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, storeName);
				pstmt.setString(2, tel);
				pstmt.setString(3, address);

				pstmt.executeUpdate();


			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
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
		}

	}
}
