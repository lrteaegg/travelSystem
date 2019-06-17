package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SendMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		if(email!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			//重定向
			response.sendRedirect("feedback.html");
		}else {
			request.setAttribute("message", "你输入的邮箱错误");
			request.getRequestDispatcher("eooro.jsp").forward(request, response);
		}
	}

}




