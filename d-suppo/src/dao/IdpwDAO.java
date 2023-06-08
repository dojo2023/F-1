package dao;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import model.Idpw;

public class IdpwDAO {
	// ログインできるならtrueを返す
	public boolean isLoginOK(Idpw idpw) {
		Connection conn = null;
		boolean loginResult = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する テストテーブルに接続しています
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

			// SELECT文を準備する
			String sql = "select count(*) from IDPW where ID = ? and PW = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, idpw.getId());

			//--------------------------------------------------------
			String password = idpw.getPw();
			byte[] salt = new byte[16];
			salt = checkSalt(idpw.getId()); //型

			PBEKeySpec spec = new PBEKeySpec(password.toCharArray(),salt,1024,256);
			SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");

			byte[] hash = factory.generateSecret(spec).getEncoded();
			pStmt.setBytes(2,hash); // ハッシュ試作
			//---------------------------------------------------------------

			// SELECT文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// ユーザーIDとパスワードが一致するユーザーがいたかどうかをチェックする
			rs.next();
			if (rs.getInt("count(*)") == 1) {
				loginResult = true;
			}

		}
		catch (SQLException e) {
			e.printStackTrace();
			loginResult = false;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			loginResult = false;
		}catch (InvalidKeySpecException e) {
		    e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
		    e.printStackTrace();
		}finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					loginResult = false;
				}
			}
		}

		// 結果を返す
		return loginResult;
	}
	// httpセッション?をIDPWのidと紐づけ-------------------------------------------------------
	public  void sIdSet(String sid,String id){
		Connection conn = null;
		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

			String sql = "update IDPW set SID = ? where ID = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, sid);
			pStmt.setString(2, id);
			pStmt.executeUpdate();

		}catch (SQLException e) {
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
	}
//------------------------以下確認用----------------------------------------------------
	public  String checkid(String sid){ // sessionIDからログインID特定
		Connection conn = null;
		String checkid = null;
		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

		String sql = "select IDPW.ID from IDPW where  SID = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, sid );
			ResultSet resultSet = pStmt.executeQuery();

			while(resultSet.next()){
				checkid = resultSet.getString("ID");
			}
			//System.out.println("checkid = " + checkid  );//check用-------------------------------


		}catch (SQLException e) {
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
	} return checkid;
}

public  byte[] checkSalt(String id){ //saltをidで確認用(新規追加)
	Connection conn = null;
	byte[] checksalt = new byte[16];
	try {
		// JDBCドライバを読み込む
		Class.forName("org.h2.Driver");

		// データベースに接続する
		conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

	String sql = "select IDPW.SALT from IDPW where  ID = ?";
		PreparedStatement pStmt = conn.prepareStatement(sql);
		pStmt.setString(1, id );
		ResultSet resultSet = pStmt.executeQuery();

		while(resultSet.next()){
			checksalt = resultSet.getBytes("SALT");
		}
	}catch (SQLException e) {
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
} return checksalt;
}

public boolean AdminLoginOK(String sid){ // 管理者ログイン用
	Connection conn = null;
	boolean result = false;
	int admin = 0;
	try {
		// JDBCドライバを読み込む
		Class.forName("org.h2.Driver");
		// データベースに接続する
		conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

	String sql = "select IDPW.ADMIN from IDPW where  SID = ?";
		PreparedStatement pStmt = conn.prepareStatement(sql);
		pStmt.setString(1, sid );
		ResultSet resultSet = pStmt.executeQuery();

		while(resultSet.next()){
			admin = resultSet.getInt("ADMIN");
		}
		if(admin == 1){
			result = true;
		}

	}catch (SQLException e) {
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
	} return result;
	}
}
