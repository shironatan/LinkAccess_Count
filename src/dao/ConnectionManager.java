/*
 * Webアプリケーション応用講座 ConnectionManager.java
 *
 * Copyright(C) metro Inc. All Rights Reserved, 2018
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 * データベースにに接続するためのシングルトンクラス
 */
public class ConnectionManager {
	private Connection con = null;

	//デフォルトコンストラクタ
	public ConnectionManager(){}

	//コンストラクタ
	public ConnectionManager(Connection con){
		this.con = con;
	}

	/**
	 * コネクションを返すメソッド(各DAOで使われる)
	 * @return con
	 * @throws SQLException
	 */
	public Connection getConnection() throws SQLException{

		//ドライバマネージャの登録
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){

		}

		//オブジェクト取得
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:ポート番号/データベース名?characterEncoding=UTF-8&serverTimezone=JST","ユーザー名","パスワード");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return con;
	}
}
