package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Comparator;
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
			String sql ="insert into Ds (DIETNAME,DIETCOST,YEAR,MONTH,DATE,CALORIE,WEIGHT,ID,UPLOADIMG,TIMESLOT) values (?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			if (ds.getDIETNAME() != null && !ds.getDIETNAME().equals("")) {
				pStmt.setString(1, ds.getDIETNAME());
			}else {
				pStmt.setString(1, "");
			}
				pStmt.setDouble(2, ds.getCALORIE());
				pStmt.setInt(6, ds.getDIETCOST());
				pStmt.setDouble(7, ds.getWEIGHT());
			    pStmt.setString(8, id);


				pStmt.setString(9, ds.getUPLOADIMG());

			pStmt.setInt(10, ds.getTIMESLOT());

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
			String sql = "select  NUM, DIETNAME, CALORIE, DIETCOST, UPLOADIMG, TIMESLOT from DS where YEAR = ? AND MONTH = ? AND DATE = ? AND ID = ?";
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
					rs.getInt("NUM"),
					rs.getString("DIETNAME"),
					rs.getDouble("CALORIE"),
					rs.getInt("DIETCOST"),
					rs.getString("UPLOADIMG"),
					rs.getInt("TIMESLOT")
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
		Comparator<Ds> compare = Comparator.comparing(Ds::getTIMESLOT);
		dsList.sort(compare);
		//確認用--------------------------------------------------------------------
		 for (Ds e : dsList) {
	            System.out.println("TimeSlot" + e.getTIMESLOT() + " : ");
	        }

		// 結果を返す
		return dsList;
	}

	public boolean delete(int number) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

			// SQL文を準備する
			String sql = "delete from DS where NUM = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setInt(1, number);

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
