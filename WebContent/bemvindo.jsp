<!DOCTYPE html>
<html>
	<head>
		<title>bem vindo</title>
	</head>
	<body>
		<%-- primeira p�gina JSP --%>
		
		<%
			String mensagem = "Bem vindo ao sistema de agenda do FJ-21";
		%>
		<% out.println(mensagem); %>
		
		<br />
		
		<%
			String desenvolvido = "Desenvolvido por Jo�o Oliveira";
		%>
		<%= desenvolvido %>
		
		<br />
		
		<%
			System.out.println("Tudo foi executado!");
		%>
	</body>
</html>