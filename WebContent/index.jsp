<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>Gerenciador</title></head>
<body>
	Bem vindo ao nosso gerenciador de empresas!
	
	<c:if test="${not empty usuarioLogado}">
		Você está logado como ${usuarioLogado.email}<br/>
	</c:if>
	
	<form action="executa?tarefa=NovaEmpresa" method="POST">
		Nome: <input type="text" name="nome" /><br />
		<input type="submit" value="Enviar" />
	</form>
	
	<form action="login" method="POST">
		Email: <input type="text" name="email" /> <br />
		Senha: <input type="password" name="senha" /> <br />
		<input type="submit" value="Login" />
	</form>
	
	<form action="executa?tarefa=logout" method="POST">
		<input type="submit" value="Logout" />
	</form>
</body>
</html>