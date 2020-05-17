package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class AlteraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		int id = Integer.parseInt(req.getParameter("id"));
		String nome = req.getParameter("nome");
		String email = req.getParameter("email");
		String endereco = req.getParameter("endereco");
		String dataEmTexto = req.getParameter("dataNascimento");
		
		System.out.println(nome + ", " + email + ", " + endereco + ", " + dataEmTexto);
		
		ContatoDao dao = new ContatoDao();
		Contato contato = dao.pesquisar(id);
		
		if (nome.equals(null)) {
			System.out.println("nome eh igual");
		} else {
			System.out.println("nullo");
		}
		
		if (email.equals(contato.getEmail())) {
			System.out.println("email eh igual");
		} else {
			System.out.println("email eh diferente");
		}
		
		if (endereco.equals(contato.getEndereco())) {
			System.out.println("endereco eh	igual");
		} else {
			System.out.println("endereco eh diferente");
		}
		
		//if (dataEmTexto.equals(contato.getDataNascimento())) {
		//System.out.println("data eh igual");
		//}
		
		/*
		Calendar dataNascimento = Calendar.getInstance();
		Date date = new SimpleDateFormat("dd/MM/yyy").parse(dataEmTexto);
		dataNascimento.setTime(date);
		
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEmail(email);
		contato.setEndereco(endereco);
		contato.setDataNascimento(dataNascimento);
		
		ContatoDao dao = new ContatoDao();
		
		dao.altera(contato);
		*/
		
		//req.getHeaders(name)
		
		return "mvc?logica=ListaContatosLogic";
	}

}
