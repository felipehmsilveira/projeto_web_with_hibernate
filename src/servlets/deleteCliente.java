package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.Cliente;
import fachada.Fachada;

@SuppressWarnings("serial")
public class deleteCliente extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		Fachada fachada = Fachada.getInstancia();
		Cliente c = new Cliente();
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		c.setId(id);
		
		try {
			c = fachada.pesquisarCliente(c);
			fachada.deletarCliente(c);
			response.sendRedirect("cliente.jsp");
		} catch (Exception e) {
			String msg = e.getMessage();
			request.setAttribute("exception", msg);
			e.printStackTrace();
			request.getRequestDispatcher("/error.jsp").forward(request, response);	
		}
	}
}
