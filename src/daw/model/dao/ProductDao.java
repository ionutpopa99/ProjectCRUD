package daw.model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;

import daw.model.ConnectionManager;
import daw.model.bean.ProductBean;

public class ProductDao {
	static Connection currentCon = null;
	static ResultSet rs = null;

	public static List<ProductBean> findAll() {
		List<ProductBean> result = new ArrayList<ProductBean>();
		Statement stmt = null;
		String searchQuery = "select * from product";

		try {
			// connect to DB
			currentCon = ConnectionManager.getConnection();
			stmt = (Statement) currentCon.createStatement();
			rs = stmt.executeQuery(searchQuery);

			while (rs.next()) {
				ProductBean pb = new ProductBean();
				pb.setDenumire(rs.getString("denumire"));
				pb.setCantitate(rs.getInt("cantitate"));
				pb.setPret(rs.getInt("pret"));
				pb.setId_Product(rs.getInt("id"));

				result.add(pb);

			}

		} catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! " + ex);
		}
		// some exception handling
		finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
				}
				rs = null;
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (Exception e) {
				}
				stmt = null;
			}
			if (currentCon != null) {
				try {
					currentCon.close();
				} catch (Exception e) {
				}
				currentCon = null;
			}
		}
		return result;
	}

	public static int delete(String idP) {
		int rs2 = 0;
		
		Statement stmt = null;
		String deleteQuerry = "delete from product where id=" + idP;

		try {
			currentCon = ConnectionManager.getConnection();
			stmt = (Statement) currentCon.createStatement();
			rs2 = stmt.executeUpdate(deleteQuerry);

		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (Exception e) {
				}
				stmt = null;
			}
			if (currentCon != null) {
				try {
					currentCon.close();
				} catch (Exception e) {
				}
				currentCon = null;
			}
		}

		return rs2;
	}

	public static ProductBean findById(String idP) {
		ProductBean result = null;
		Statement stmt = null;
		String selectQuerry = "select * from product where id=" + idP;

		try {
			currentCon = ConnectionManager.getConnection();
			stmt = (Statement) currentCon.createStatement();
			rs = stmt.executeQuery(selectQuerry);
			if (rs.next()) {
				result = new ProductBean();
				result.setCantitate(Integer.valueOf(rs.getString("Cantitate")));
				result.setDenumire(rs.getString("Denumire"));
				result.setId_Product(rs.getInt("id"));
				result.setPret(Integer.valueOf(rs.getString("Pret")));
				return result;
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (Exception e) {
				}
				stmt = null;
			}
			if (currentCon != null) {
				try {
					currentCon.close();
				} catch (Exception e) {
				}
				currentCon = null;
			}
		}

		return result;
	}

	public static int update(ProductBean pb) {
		int rs2 = 0;
		
		Statement stmt = null;
		String editQuerry = "update product set Denumire='"+pb.getDenumire()+"', Pret="+pb.getPret()+", Cantitate="+pb.getCantitate()+"  where id=" + pb.getId_Product();
		try {
			currentCon = ConnectionManager.getConnection();
			stmt = (Statement) currentCon.createStatement();
			rs2 = stmt.executeUpdate(editQuerry);
			
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (Exception e) {
				}
				stmt = null;
			}
			if (currentCon != null) {
				try {
					currentCon.close();
				} catch (Exception e) {
				}
				currentCon = null;
			}
		}

		return rs2;
	}
	
	public static int insert(ProductBean pb) {
		int rs2 = 0;
		
		Statement stmt = null;
		String insertQuerry = "insert into product(Denumire,Pret,Cantitate) values ('"+pb.getDenumire()+"', "+pb.getPret()+", "+pb.getCantitate()+")";
		try {
			currentCon = ConnectionManager.getConnection();
			stmt = (Statement) currentCon.createStatement();
			rs2 = stmt.executeUpdate(insertQuerry);
			
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (Exception e) {
				}
				stmt = null;
			}
			if (currentCon != null) {
				try {
					currentCon.close();
				} catch (Exception e) {
				}
				currentCon = null;
			}
		}

		return rs2;
	}

}
