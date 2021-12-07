package controlador.comprar;

import java.io.IOException;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/comprar.do")
public class ComprarServlet extends HttpServlet implements Servlet {

	private static final long serialVersionUID = -2327681578618570633L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	req.getServletContext().getRequestDispatcher("/vistas/ofertador.jsp").forward(req, resp);
    }


}
