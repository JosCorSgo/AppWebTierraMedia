package controlador.atracciones;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.Atraccion;
import modelo.TipoAtraccion;
import servicios.AtraccionService;

@WebServlet("/atracciones/create.do")
public class CreateAttractionServlet extends HttpServlet {

	private static final long serialVersionUID = 3801325811223907827L;
	private AtraccionService atraccionService;

	@Override
	public void init() throws ServletException {
		super.init();
		this.atraccionService = new AtraccionService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/vistas/atracciones/create.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombre = req.getParameter("nombre");
		TipoAtraccion tipo = TipoAtraccion.AVENTURA;
				//TipoAtraccion.valueOf(req.getParameter("tipo"));
		Integer costo = Integer.parseInt(req.getParameter("costo"));
		Double duracion = Double.parseDouble(req.getParameter("duracion"));
		Integer cupo = Integer.parseInt(req.getParameter("cupo"));
		String img = req.getParameter("img");
		String descripcion = req.getParameter("descripcion");
		
		Atraccion atraccion = atraccionService.crear(nombre,tipo, costo, duracion, cupo, img, descripcion);
		if (atraccion.isValid()) {
			resp.sendRedirect("/AppWebTierraMedia/atracciones/index.do");
		} else {
			req.setAttribute("atraccion", atraccion);

			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/vista/atraccion/create.jsp");
			dispatcher.forward(req, resp);
		}

	}

}
