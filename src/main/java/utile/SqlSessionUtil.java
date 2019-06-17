package utile;

import java.io.InputStream;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class SqlSessionUtil {
	private static SqlSessionFactory sf;
	//获取sessionFactory
	static {		
		InputStream in = SqlSessionUtil.class.
				getClassLoader().getResourceAsStream("SqlMapperConfig.xml");		
		sf = new SqlSessionFactoryBuilder().build(in);
	}
	//返回session对象
	public static SqlSession getSession() {
		return sf.openSession();
	}
}
