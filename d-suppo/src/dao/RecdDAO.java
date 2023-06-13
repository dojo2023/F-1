package dao; //BcDAOのテストプログラム

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Recd;

public class RecdDAO {
	// 引数paramで検索項目を指定し、検索結果のリストを返す
	public List<Recd> select(Recd param) {
		Connection conn = null;
		List<Recd> nonalcList = new ArrayList<Recd>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/makiBC", "sa", "");

			// SQL文を準備する
			String sql = "select * "
					+ "from Recd WHERE GENRE LIKE ? AND DISH LIKE ? AND HARVEST LIKE ? AND DIETNAME LIKE ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (param.getGenre() != 0) {
				pStmt.setInt(1, "%" + param.getGenre() + "%");
			} else {
				pStmt.setInt(1, "%");
			}
			if (param.getDish() != 0) {
				pStmt.setInt(2, "%" + param.getDish() + "%");
			} else {
				pStmt.setInt(2, "%");
			}
			if (param.getHarvest() != 0) {
				pStmt.setInt(3, "%" + param.getHarvest() + "%");
			} else {
				pStmt.setInt(3, "%");
			}
			if (param.getDietname() != null) {
				pStmt.setString(4, "%" + param.getDietname() + "%");
			} else {
				pStmt.setString(4, "%");
			}

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Recd nonalcresult = new Recd(
						rs.getInt("GENRE"),
						rs.getInt("DISH"),
						rs.getInt("HARVEST"),
						rs.getString("DIETNAME"),

						nonalcList.add(nonalcresult));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			nonalcList = null;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			nonalcList = null;
		} finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					nonalcList = null;
				}
			}
		}

		// 結果を返す
		return nonalcList;
	}
}