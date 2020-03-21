<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<title>lista contatos</title>
	</head>
	<body>
		<c:import url="cabecalho.jsp"/>
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
					<td>
						<c:choose>
							<c:when test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</c:when>
							<c:otherwise>
								E-mail não informado
							</c:otherwise>
						</c:choose>
					</td>
					<td>${contato.endereco}/</td>
					<td>${contato.dataNascimento.time}</td>
				</tr>
			</c:forEach>
		</table>
		<c:import url="rodape.jsp"/>
	</body>
</html>