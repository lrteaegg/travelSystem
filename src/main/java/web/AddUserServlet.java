package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import entity.User;

public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String phone = 
				request.getParameter("phone");
		String email = 
				request.getParameter("email");
		System.out.println("uname:" + uname + " pwd:" 
				+ pwd + " phone:" + phone 
				+ " email:" + email);
		
		UserDAO dao = new UserDAO();
		User user = new User();
		user.setUname(uname);
		user.setPwd(pwd);
		user.setPhone(phone);
		user.setEmail(email);
		
		try {
			dao.saveUser(user);
			//返回到list表中
			response.sendRedirect("index.jsp");
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("errorMsg", "系统繁忙，稍后重试");
			//转发
			request.getRequestDispatcher(
					"error.jsp").forward(request, response);
		}
	}

}
