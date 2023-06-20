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

	public List<Recd> selectGenre(int genre) {
		Connection conn = null;
		List<Recd> genreList = new ArrayList<Recd>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

			// SQL文を準備する
			String sql = "SELECT DIETNAME,DIETPIC FROM RECD WHERE GENRE = ? ORDER BY RAND() LIMIT 3";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setInt(1, genre);

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Recd genreResult = new Recd(
						rs.getString("DIETNAME"),
						rs.getString("DIETPIC"));
				genreList.add(genreResult);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			genreList = null;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			genreList = null;
		} finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					genreList = null;
				}
			}
		}

		// 結果を返す
		return genreList;
	}

	public List<Recd> selectDish(int dish) {
		Connection conn = null;
		List<Recd> genreList = new ArrayList<Recd>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

			// SQL文を準備する
			String sql = "SELECT DIETNAME,DIETPIC FROM RECD WHERE Dish = ? ORDER BY RAND() LIMIT 3";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setInt(1, dish);

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Recd genreResult = new Recd(
						rs.getString("DIETNAME"),
						rs.getString("DIETPIC"));
				genreList.add(genreResult);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			genreList = null;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			genreList = null;
		} finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					genreList = null;
				}
			}
		}

		// 結果を返す
		return genreList;
	}

	public List<Recd> selectHarvest(int harvest) {
		Connection conn = null;
		List<Recd> genreList = new ArrayList<Recd>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

			// SQL文を準備する
			String sql = "SELECT DIETNAME,DIETPIC FROM RECD WHERE HARVEST = ? ORDER BY RAND() LIMIT 3";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setInt(1, harvest);

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Recd genreResult = new Recd(
						rs.getString("DIETNAME"),
						rs.getString("DIETPIC"));
				genreList.add(genreResult);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			genreList = null;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			genreList = null;
		} finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					genreList = null;
				}
			}
		}

		// 結果を返す
		return genreList;
	}
}
