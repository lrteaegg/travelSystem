package utile;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import org.apache.commons.dbcp.BasicDataSource;

public class DBUtils {
	private static BasicDataSource dataSource;
	
	static {
		dataSource = new BasicDataSource();
		Properties properties = new Properties();
		InputStream inputStream =
				DBUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
		try {
			properties.load(inputStream);
			dataSource.setDriverClassName(
					properties.getProperty("driver"));
			dataSource.setUrl(properties.getProperty("url"));
			dataSource.setUsername(properties.getProperty("username"));
			dataSource.setPassword(properties.getProperty("password"));
			dataSource.setInitialSize(Integer.parseInt(properties.getProperty("initSize")));
			dataSource.setMaxActive(Integer.parseInt(properties.getProperty("maxSize")));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static Connection getConn() throws SQLException {
		return dataSource.getConnection();
	}
	public static void close(Connection conn) {
		close(null,null,conn);
	}
	public static void close(ResultSet rs,Statement stat,
			Connection conn) {
		
			try {
				if(rs!=null) {
					rs.close();
				}
				if(stat!=null) {
					stat.close();
				}
				if(conn!=null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
	}
}
