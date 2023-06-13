package dao; //BcDAOのテストプログラム

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Reca;

public class RecaDAO {
	// 引数paramで検索項目を指定し、検索結果のリストを返す
	public List<Reca> select(Reca param) {
		Connection conn = null;
		List<Reca> alcList = new ArrayList<Reca>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/makiBC", "sa", "");

			// SQL文を準備する
			String sql = "select * "
					+ "from Reca WHERE ALC LIKE ? AND CATEGORY LIKE ? AND DIETNAME LIKE ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (param.getAlc() != 0) {
				pStmt.setInt(1, "%" + param.getAlc() + "%");
			} else {
				pStmt.setInt(1, "%");
			}
			if (param.getCategory() != 0) {
				pStmt.setInt(2, "%" + param.getCategory() + "%");
			} else {
				pStmt.setInt(2, "%");
			}
			if (param.getDietname() != null) {
				pStmt.setString(3, "%" + param.getDietname() + "%");
			} else {
				pStmt.setString(3, "%");
			}

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Reca alcresult = new Reca(
						rs.getInt("ALC"),
						rs.getInt("CATEGORY"),
						rs.getInt("DIETNAME"),

						alcList.add(alcresult));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			alcList = null;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			alcList = null;
		} finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					alcList = null;
				}
			}
		}

		// 結果を返す
		return alcList;
	}
}