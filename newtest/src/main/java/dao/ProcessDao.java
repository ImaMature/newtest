package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.mysql.cj.protocol.Resultset;

public class ProcessDao {
	private Connection conn;
	private Resultset rs;
	private PreparedStatement ps;
	
	public ProcessDao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/newtest?serverTimezone=UTC" , "root","1234");
			System.out.println("db연동 성공");
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("db연동 실패");
		}
	}
	
	public static ProcessDao processDao = new ProcessDao();
	public static ProcessDao getProcessDao() {
		return processDao;
	}
	
}
