package controlador;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.Usuario;
import persistencia.genericos.DAOFactory;
import persistencia.genericos.UsuarioDAO;
import servicios.UsuarioService;

@WebServlet("/usuarios")
public class UsuariosServlet extends HttpServlet implements Servlet {
	
	private static final long serialVersionUID = -1871994986131231476L;
	private UsuarioService usuarioService;

	@Override
	public void init() throws ServletException {
		super.init();
		usuarioService = new UsuarioService();
	}
	

	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
     	ArrayList<Usuario> listaUsuarios =  usuarioService.listarTodos();
     	
     	if (listaUsuarios != null) {
     		
     		req.setAttribute("listaUsuarios", listaUsuarios);

    		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/usuarios.jsp");
    		dispatcher.forward(req, resp);

		} else {
				req.setAttribute("flash", "No se encontraron clientes activos ");
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/usuarios.jsp");
		  		    dispatcher.forward(req, resp);
		}
	    	

	}
}
