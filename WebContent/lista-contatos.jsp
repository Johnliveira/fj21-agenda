<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
	<head>
		<title>lista contatos</title>
	</head>
	<body>
		<c:import url="cabecalho.jsp"/>
		<table>
			<tr>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Data de nascimento</th>
			</tr>
			<c:forEach var="contato" items="${contatos}">
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
					<td>
						<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/>
					</td>
					<td>
						<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
					</td>
					<td>
						<a href="mvc?logica=EditaContatoLogic&id=${contato.id}">Editar</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<c:import url="rodape.jsp"/>
	</body>
</html>