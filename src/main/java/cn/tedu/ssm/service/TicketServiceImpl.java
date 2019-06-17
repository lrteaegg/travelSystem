package cn.tedu.ssm.service;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.tedu.ssm.bean.Ticket;
import cn.tedu.ssm.mapper.TicketMapper;
@Service
public class TicketServiceImpl implements TicketService{
	
	@Resource
	private TicketMapper ticketMapper;
	
	public void addTicket(Ticket ticket) {
		ticketMapper.insertTicket(ticket);
	}
	
	public List<Ticket> getAllTicket() {
		return ticketMapper.selectAll();
	}

	public void delTicket(Integer id) {
		ticketMapper.deleteTicket(id);
	}
	
}









