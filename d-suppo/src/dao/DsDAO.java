package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Ds;

public class DsDAO {
	public boolean insert(Ds card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

			//SQL文を準備
			String sql ="insert into Ds (DIETNAME,CALORIE,DIETCOST,WEIGHT) values (?,?,?,?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			if (card.getDIETNAME() != null && !card.getDIETNAME().equals("")) {
				pStmt.setString(1, card.getDIETNAME());
			}
			else {
				pStmt.setString(1, "");
			}
			if (card.getCALORIE() != null && !card.getCALORIE().equals("")) {
				pStmt.setString(2, card.getCALORIE());
			}
			else {
				pStmt.setString(2, "");
			}
			if (card.getDIETCOST() != null && !card.getDIETCOST().equals("")) {
				pStmt.setString(3, card.getDIETCOST());
			}
			else {
				pStmt.setString(3, "");
			}
			if (card.getWEIGHT() != null && !card.getWEIGHT().equals("")) {
				pStmt.setString(4, card.getWEIGHT());
			}
			else {
				pStmt.setString(4, "");
			}

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
}
