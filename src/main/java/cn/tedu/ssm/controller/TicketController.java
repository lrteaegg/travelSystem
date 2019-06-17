package cn.tedu.ssm.controller;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.ssm.bean.Ticket;
import cn.tedu.ssm.service.TicketService;
@Controller
@RequestMapping("/ticket")
public class TicketController {
	@RequestMapping("/showAdd.do")
	public String showAdd() {
		return "add";
	}
	
	@Resource
	private TicketService ticketService;
	
	@RequestMapping("/add.do")
	public String add(String start,String end,ModelMap map){
		Ticket ticket = new Ticket();
		ticket.setStart(start);
		ticket.setEnd(end);
		map.addAttribute("start",start);
		map.addAttribute("end",end);
		//1. 调用业务层方法
		ticketService.addTicket(ticket);	
		//2.return "index";
	    return "index";
    }
	
	@RequestMapping("/getAllTicket.do")
	public String getAllTicket(ModelMap map) {
		//1. 调用业务层方法，返回
		//2. 把list设置到map中
		//3. return "showDept"		
		List<Ticket> list = ticketService.getAllTicket();
		map.addAttribute("allTicket",list);
		return "showTicket";
	}
	
	@RequestMapping("deletTicket.do")
	public String delTicket(String id) {
		
		ticketService.delTicket(Integer.parseInt(id));
		
		return "redirect:getAllTicket.do";
	}
}














