package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.Process;

public class ProcessDao {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ps;
	
	public ProcessDao() {
		try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/newtest?serverTimezone=UTC", "root", "1234");
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("db연동 실패");
		}
	}
	
	Process process= new Process();
	public static ProcessDao processDao = new ProcessDao();
	public static ProcessDao getProcessDao() {
		return processDao;
	}
	
	
	//마지막 레코드 빼오기
	public int selectlast() {
		String sql ="SELECT p_num FROM process ORDER BY p_num DESC LIMIT 1";
		try {
			ps= conn.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0;
		
	}
	//등록하기
	public boolean ProcessReg(Process process) {
		String sql = "insert into process (p_num, p_ready, p_print, p_coating, p_paper, p_attach, p_packaging, p_date, p_finaldate) values(?,?,?,?,?,?,?,?,?)";
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, process.getP_num());
			ps.setString(2, process.getP_ready());
			ps.setString(3, process.getP_print());
			ps.setString(4, process.getP_coating());
			ps.setString(5, process.getP_paper());
			ps.setString(6, process.getP_attach());
			ps.setString(7, process.getP_packaging());
			ps.setString(8, process.getP_date());
			ps.setString(9, process.getP_finaldate());
			ps.executeUpdate();
			return true;
		}catch (Exception e) {
			System.out.println("ProcessReg()문제 : "+e);
			
		}
		return false;
	}
	public ArrayList<Process> processList(){
		ArrayList<Process> process = new ArrayList<>();
		String sql = "select * from process order by p_num asc";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				Process proc = new Process(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9));
				process.add(proc);
			}
			return process;
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return null;
		
	}
}
