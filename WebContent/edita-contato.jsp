<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<html>
	<head>
		<title>Edita contato</title>
		<link href="jquery/jquery-ui.css" rel="stylesheet">
		<script src="jquery/external/jquery/jquery.js"></script>
		<script src="jquery/jquery-ui.js"></script>
	</head>
	<body>
		<c:import url="cabecalho.jsp"/>
		
		<p>Edite apenas o desejago</p>
		<hr />
		<form action="mvc?logica=AlteraContatoLogic" method="post">
			Id: <input type="number" name="id" value="${contato.id}" readonly="readonly" /><br /> 
			Nome: <input type="text" name="nome" placeholder="${contato.nome}" /><br /> 
			E-mail: <input type="text" name="email" placeholder="${contato.email}" /><br /> 
			Endereço: <input type="text" name="endereco" placeholder="${contato.endereco}" /><br /> 
			Data Nascimento: <caelum:campoData id="dataNascimento" /><br /> 
			
			<input type="submit" value="Alterar" />
		</form>
		
		<c:import url="rodape.jsp"/>
	</body>
</html>