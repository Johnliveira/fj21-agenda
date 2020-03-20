<!DOCTYPE html>
<html>
	<head>
		<title>bem vindo</title>
	</head>
	<body>
		<%-- primeira página JSP --%>
		
		<%
			String mensagem = "Bem vindo ao sistema de agenda do FJ-21";
		%>
		<% out.println(mensagem); %>
		
		<br />
		
		<%
			String desenvolvido = "Desenvolvido por João Oliveira";
		%>
		<%= desenvolvido %>
		
		<br />
		
		<%
			System.out.println("Tudo foi executado!");
		%>
	</body>
</html>