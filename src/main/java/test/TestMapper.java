package test;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import cn.tedu.ssm.bean.Address;
import cn.tedu.ssm.mapper.AddressMapper;
import utile.SqlSessionUtil;


public class TestMapper {
	
	@Test
	public void testInsert() {
		SqlSession session = SqlSessionUtil.getSession();
		AddressMapper addressDao = session.getMapper(AddressMapper.class);
		Address address = new Address();
		address.setProvince("北京");
		address.setCity("直辖区");
		address.setArea("海定区");
		address.setUserAddress("中鼎大厦7");
		
		System.out.println(addressDao.insertAddress(address));
		session.commit();
		session.close();
	}
	
	@Test
	public void testUpdate() {
		SqlSession session = SqlSessionUtil.getSession();
		AddressMapper addressDao =session.getMapper(AddressMapper.class);
		
		Address address = new Address();
		address.setId(2);
		address.setProvince("天津");
		address.setCity("南开去");
		address.setArea("航天北里");
		address.setUserAddress("农科大厦");
		
		System.out.println(addressDao.updateAddress(address));
		session.commit();
		session.close();
	}
	
	@Test
	public void testDelete() {
		SqlSession session = SqlSessionUtil.getSession();
		AddressMapper addressDao = session.getMapper(AddressMapper.class);
		System.out.println(addressDao.deleteAddress(1));
		session.commit();
		session.close();
	}
	
	@Test
	public void testSelectOne() {
		SqlSession session = SqlSessionUtil.getSession();
		AddressMapper addressDao = session.getMapper(AddressMapper.class);
		Address address = addressDao.selectById(2);
		System.out.println(address);
		session.commit();
		session.close();
	}
	
	@Test
	public void testSelectAll() {
		SqlSession session = SqlSessionUtil.getSession();
		AddressMapper addressDao = session.getMapper(AddressMapper.class);
		List<Address> list = addressDao.selectAll();
		System.out.println(list);
		session.commit();
		session.close();
	}
}












