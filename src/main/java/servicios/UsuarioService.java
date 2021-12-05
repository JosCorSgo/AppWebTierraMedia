package servicios;

import java.util.ArrayList;

import modelo.Usuario;
import persistencia.genericos.DAOFactory;
import persistencia.genericos.UsuarioDAO;



public class UsuarioService {
	
 	
 	public ArrayList<Usuario> listarTodos() {
 		UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
 	 	ArrayList<Usuario> listaUsuarios =  usuarioDAO.buscarTodos();
    	return listaUsuarios;
	}
 	
	
 	public Usuario login(String email, String password) {
 		UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
     	Usuario usuario =  usuarioDAO.buscarPorEmailyPassword(email, password);
    	return usuario;
	}

 	
 	
 	
 	
}
