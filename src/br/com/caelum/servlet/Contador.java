package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contador")
public class Contador extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private int contador = 0;
	
	@Override
	public void init() throws ServletException {
		super.init();
		log("Iniciando a servlet");
	}
	
	@Override
	public void destroy() {
		super.destroy();
		log("Destruindo a servlet");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		contador++;
		
		PrintWriter out = resp.getWriter();
		
		out.println("<html>");
		out.println("<body>");
		out.println("Contador agora �: " + contador);
		out.println("</body>");
		out.println("</html>");
		
		super.service(req, resp);
	}
}
