package cn.tedu.ssm.service;



import java.util.List;

import cn.tedu.ssm.bean.Ticket;

public interface TicketService {
	
	void addTicket(Ticket ticket);

	List<Ticket> getAllTicket();
	
	void delTicket(Integer id);
	
}














