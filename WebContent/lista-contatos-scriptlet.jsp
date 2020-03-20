<%@ page import="java.util.*,
	br.com.caelum.jdbc.dao.*,
	br.com.caelum.jdbc.modelo.*,
	java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Listar contatos</title>
	</head>
	<body>
		<table>
			<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			
			for (Contato contato : contatos) {
			%>
			
				<tr>
					<td ><%=contato.getNome() %></td>
					<td><%=contato.getEmail() %></td>
					<td><%=contato.getEmail() %></td>
					<td><%=sdf.format(contato.getDataNascimento().getTime()) %></td>
				</tr>
				<%
				}
				%>
		</table>
	</body>
</html>