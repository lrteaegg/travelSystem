package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.User;
import utile.DBUtils;

public class UserDAO {
	//根据用户名判断是否存在用户
	public User find(String uname) {
		Connection conn = null;
		PreparedStatement stat = null;
		ResultSet rs = null;
		User user = null;
		try {
			conn = DBUtils.getConn();
			String sql = "select * from user where uname =?";
			stat = conn.prepareStatement(sql);
			stat.setString(1, uname);
			
			rs = stat.executeQuery();
			if(rs.next()) {
				int id = rs.getInt("id");
				String pwd = rs.getString("pwd");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				user = new User();
				user.setId(id);
				user.setUname(uname);
				user.setPwd(pwd);
				user.setPhone(phone);
				user.setEmail(email);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtils.close(rs, stat, conn);
		}
		return user;
	}
	/*
	 * 查找所有的用户
	 */
	public List<User> findAll() {
		List<User> list = new ArrayList<User>();
		Connection conn = null;
		PreparedStatement stat = null;
		ResultSet rs = null;
		try {
			conn = DBUtils.getConn();
			String sql = "select * from user";
			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();
			while(rs.next()) {
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtils.close(rs, stat, conn);
		}
		return list;
	}
	/*
	 * 添加用户
	 */
	public void saveUser(User user) {
		Connection conn = null;
		PreparedStatement stat = null;
		ResultSet rs = null;
		try {
			conn = DBUtils.getConn();
			String sql = "insert into user values(null,?,?,?,?)";
			stat = conn.prepareStatement(sql);
			stat.setString(1, user.getUname());
			stat.setString(2, user.getPwd());
			stat.setString(3, user.getEmail());
			stat.setString(4, user.getPhone());
			stat.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtils.close(rs, stat, conn);
		}
	}
}
