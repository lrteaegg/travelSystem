package cn.tedu.ssm.mapper;



import java.util.List;

import cn.tedu.ssm.bean.Ticket;

public interface TicketMapper {
	void insertTicket(Ticket ticket);
	List<Ticket> selectAll();
	void deleteTicket(Integer id);
}
