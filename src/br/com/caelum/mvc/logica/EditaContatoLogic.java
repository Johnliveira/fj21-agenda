package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class EditaContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		long id = Long.parseLong(req.getParameter("id"));
		
		ContatoDao dao = new ContatoDao();
		Contato contato = dao.pesquisar((int) id);
		
		req.setAttribute("contato", contato);
		return "edita-contato.jsp";
	}

}