package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import entity.User;

public class ActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		//获取请求资源路径
		String uri = request.getRequestURI();
		//分析请求资源路径，进行不同的处理
		String path = uri.substring(uri.lastIndexOf("/"),uri.lastIndexOf(".do"));
		System.out.println("path:"+path);
		if ("/index1".equals(path)) {
			processIndex1(request,response);
		}else if ("/login".equals(path)) {
			processLogin(request,response);
		}else if("/addUser".equals(path)) {
			processAddUser(request,response);
		}else if ("/exit".equals(path)) {
			processExit(request,response);
		}
	}
	//退出登录
	private void processExit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		response.sendRedirect("index.jsp");
	}
/*
	 * 添加用户
	 */
private void processAddUser(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	String uname = request.getParameter("uname");
	
	//添加判断是否存在用户名
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
	HttpSession session = request.getSession();
	session.setAttribute("user", user);
	
	if(uname==null||pwd==null||phone==null||email==null) {
		response.sendRedirect("register.jsp");
		return;
	}
	//存在用户名
	if (dao.find(uname)!=null) {
		request.setAttribute("failed", "用户民存在！");
		request.getRequestDispatcher("register.jsp").forward(request,response);
		return;
	}

	try {
		dao.saveUser(user);
		//返回到主页中，不需要登录
		response.sendRedirect("index1.jsp");
		
	}catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		request.setAttribute("errorMsg", "系统繁忙，稍后重试");
		//转发
		request.getRequestDispatcher(
				"/WEB-INF/error.jsp").forward(request, response);
	}
	}
	/*
 * 登录验证处理
 */
	private void processLogin(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
	
		UserDAO userDAO = new UserDAO();
		try {
			User user = userDAO.find(uname); 
			if(user != null&&user.getPwd().equals(pwd)) {
				/*
				 * 登录成功
				 */
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				/*
				 * 如果有匹配信息，则登录成功
				 * 进行重定位
				 */
				RequestDispatcher rd = 
						request.getRequestDispatcher(
								"index1.jsp");
				//step3.转发
				rd.forward(request, response);
			}else {
				HttpSession session = request.getSession();
				session.setAttribute("login_failed",
						"用户名或密码错误");
				response.sendRedirect("index.jsp");
				System.out.println("登录失败！");
			}
				
		} catch (Exception e) {
			// TODO: handle exception
						e.printStackTrace();
						request.setAttribute("errorMsg",
								"系统繁忙，稍后重试");
						request.getRequestDispatcher(
								"/WEB-INF/error.jsp").forward(
										request, response);
		}
	}
/*
 * 页面判断是否已经登录
 */
	private void processIndex1(HttpServletRequest request, 
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Object object = session.getAttribute("user");
		if(object == null) {
			session.setAttribute("login_failed", "登录失败，请登陆！");
			//没有登录过，则重定向到登录页面
			response.sendRedirect("index.jsp");
			return;
		}else {
			//返回到list表中
			response.sendRedirect("index1.jsp");
		}
	}

}
