<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<title>lista contatos</title>
	</head>
	<body>
		<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDao" />
	
		<table>
			<tr>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Data de nascimento</th>
			</tr>
			<c:forEach var="contato" items="${dao.lista}" varStatus="id">
				<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff'}">
					<td>${contato.nome}</td>
					<td>${contato.email}</td>
					<td>${contato.endereco}/</td>
					<td>${contato.dataNascimento.time}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>