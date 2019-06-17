package cn.tedu.ssm.mapper;

import java.util.List;

import cn.tedu.ssm.bean.Address;

public interface AddressMapper {
	//添加地址信息 insertAddress
	Integer insertAddress(Address adderss);
	//修改地址性喜
	Integer updateAddress(Address address);
	//删除信息
	Integer deleteAddress(Integer id);
	//根据id查询地址信息
	Address selectById(Integer id);
	//查询所有的地址信息
	List<Address> selectAll();
}
