package test;

import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.tedu.ssm.bean.Ticket;
import cn.tedu.ssm.service.TicketService;

public class TestTikcet {
	@Test
	public void testGetAllDept() {
		
		AbstractApplicationContext ac = 
				new ClassPathXmlApplicationContext("spring-dao.xml","spring-service.xml");
		TicketService ts = 
			ac.getBean("ticketServiceImpl",TicketService.class);
		System.out.println(ts.getAllTicket());
	}
//	@Test
//	public void testSelectAll() {
//		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml");
//		DeptMapper dm = ac.getBean("deptMapper",DeptMapper.class);
//		System.out.println(dm.selectAll());
//	}
	
	@Test
	public void testAdd() {
		AbstractApplicationContext ac = 
				new ClassPathXmlApplicationContext("spring-dao.xml","spring-service.xml");
		TicketService ts = 
			ac.getBean("ticketServiceImpl",TicketService.class);
		Ticket ticket = new Ticket();
		ticket.setStart("天津");
		ticket.setEnd("北京");
		ticket.setMoney(54.6);
		ts.addTicket(ticket);
		
	}
//	@Test
//	public void testInsert() {
//		AbstractApplicationContext ac = 
//				new ClassPathXmlApplicationContext("spring-dao.xml");
//		DeptMapper dm = 
//				ac.getBean("deptMapper",DeptMapper.class);
//		Dept dept = new Dept();
//		dept.setDeptAddress("北京");
//		dept.setDeptName("研发部");
//		dm.insertDept(dept);
//	}
}
