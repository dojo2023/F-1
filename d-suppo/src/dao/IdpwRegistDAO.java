package dao;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import model.Idpw;


public class IdpwRegistDAO {
	Connection conn = null;
	boolean NewIdpwcheck = true;

	public boolean NewIdpecheck(String id) { // IDの重複だけ確認するように改造
	try {
		// JDBCドライバを読み込む
		Class.forName("org.h2.Driver");

		// データベースに接続する
		conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");

		// SELECT文を準備する
		String sql = "select count(*) from IDPW where ID = ?";
		PreparedStatement pStmt = conn.prepareStatement(sql);
		pStmt.setString(1,id);

		// SELECT文を実行し、結果表を取得する
		ResultSet rs = pStmt.executeQuery();

		// ユーザーIDとパスワードが一致するユーザーがいたかどうかをチェックする
		rs.next();
		if (rs.getInt("count(*)") == 1) {
			NewIdpwcheck = false;
		}
	}
	catch (SQLException e) {
		e.printStackTrace();
		NewIdpwcheck = false;
	}
	catch (ClassNotFoundException e) {
		e.printStackTrace();
		NewIdpwcheck = false;
	}
	finally {
		// データベースを切断
		if (conn != null) {
			try {
				conn.close();
			}
			catch (SQLException e) {
				e.printStackTrace();
				NewIdpwcheck = false;
			}
		}
	}
	return NewIdpwcheck;
	}

	public boolean insertIdpw(Idpw idpw)  { //idpw登録
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/data/test", "sa", "");
			//conn.setAutoCommit(false);

			//SQL文を準備
			String sql ="insert into IDPW (ID,PW,ADMIN,SALT) values (?,?,?,?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//SQL作成
			if (idpw.getId() != null && !idpw.getId().equals("")) {
				pStmt.setString(1, idpw.getId());
			}else {
				pStmt.setString(1, null);
			}
			//--------------------------------------------------------
			String password = idpw.getPw();

			SecureRandom random = new SecureRandom();
			byte[] salt = new byte[16];
			random.nextBytes(salt);

			PBEKeySpec spec = new PBEKeySpec(password.toCharArray(),salt,1024,256);
			SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");

			byte[] hash = factory.generateSecret(spec).getEncoded();
			pStmt.setBytes(2,hash); // ハッシュ試作
			pStmt.setBytes(4,salt); //　salt登録
			//---------------------------------------------------------------
			pStmt.setInt(3, 0);
			//SQL実行
			if (pStmt.executeUpdate() == 1) {
				//conn.commit();
				result = true;
				//conn.setAutoCommit(true);
			}else {
				result = false;
			}

		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
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
				}
			}
		}

		// 結果を返す
		return result;
	}

}

