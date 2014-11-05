<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<g:javascript library="jquery"></g:javascript>
<g:javascript src="/main.js"></g:javascript>

<title>MarketChase</title>
</head>
<body>









	<g:render template="/navs/navMain"></g:render>
	<h1 class="text-center">Desative sua loja</h1>
	<div class="container">
		<div class="row">
			<div class="tabbable">
				<ul class="nav nav-tabs nav-justified">
					
				</ul>

				<g:form controller="Loja" action="desativarLoja">
    				<g:actionSubmit value="Desativar Loja" />
				</g:form>

			</div>
		</div>
	</div>
	<br />

</body>
</html>
