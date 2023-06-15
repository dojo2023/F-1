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
	public List<Reca> select(int alc,int category) {
		Connection conn = null;
		List<Reca> alcList = new ArrayList<Reca>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

			// SQL文を準備する
			String sql = "select * from RECA WHERE ALC= ?  AND CATEGORY = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			pStmt.setInt(1,alc);
			pStmt.setInt(2,category);

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Reca alcresult = new Reca(
						rs.getInt("ALC"),
						rs.getInt("CATEGORY"),
						rs.getString("DIETNAME")
						);

						alcList.add(alcresult);
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