<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>MarketChase Área restrita</title>
	</head>
	<body>
		<sec:ifLoggedIn>
		Olá, ${usuario}!
		<a href="/MarketChase/j_spring_security_logout">Sair</a>
		</sec:ifLoggedIn>
		
	</body>
</html>
