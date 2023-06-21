package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Date;
import model.Ds;

public class DsDAO {
	public boolean insert(Date ymd,Ds ds,String id) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

			//SQL文を準備
			String sql ="insert into Ds (DIETNAME,DIETCOST,YEAR,MONTH,DATE,CALORIE,WEIGHT,ID) values (?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			if (ds.getDIETNAME() != null && !ds.getDIETNAME().equals("")) {
				pStmt.setString(1, ds.getDIETNAME());
			}else {
				pStmt.setString(1, "");
			}
			if (ds.getCALORIE() != null && !ds.getCALORIE().equals("")) {
				pStmt.setString(2, ds.getCALORIE());
			}else {
				pStmt.setString(2, "");
			}
			if (ds.getDIETCOST() != null && !ds.getDIETCOST().equals("")) {
				pStmt.setString(6, ds.getDIETCOST());
			}else {
				pStmt.setString(6, "");
			}
			if (ds.getWEIGHT() != null && !ds.getWEIGHT().equals("")) {
				pStmt.setString(7, ds.getWEIGHT());
			}else {
				pStmt.setString(7, "");
			}
			pStmt.setString(8, id);//要修正

			pStmt.setString(3, ymd.getYear());
			pStmt.setString(4, ymd.getMonth());
			pStmt.setString(5, ymd.getDate());

			// SQL文を実行する
			if (pStmt.executeUpdate() == 1) {
				result = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		// 結果を返す
		return result;
	}

	public List<Ds> listdisplay(Date ymd,String id){
		Connection conn = null;
		List<Ds> dsList = new ArrayList<Ds>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

			// SQL文を準備する
			String sql = "select DIETNAME,CALORIE,DIETCOST from DS where YEAR = ? AND MONTH = ? AND DATE = ? AND ID = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			pStmt.setString(1, ymd.getYear()); //年
			pStmt.setString(2, ymd.getMonth());//月
			pStmt.setString(3, ymd.getDate()); // 日
			pStmt.setString(4, id); //id


			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Ds dsresult = new Ds(
					rs.getString("DIETNAME"),
					rs.getString("CALORIE"),
					rs.getString("DIETCOST")
					//rs.getInt("TIMESLOT")
				);

				dsList.add(dsresult);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			dsList = null;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			dsList = null;
		} finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					dsList = null;
				}
			}
		}

		// 結果を返す
		return dsList;
	}
}
