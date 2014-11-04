<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<g:javascript library="jquery"></g:javascript>
<g:javascript src="/main.js"></g:javascript>

<title>MarketChase</title>
</head>
<body>
	<script type="text/javascript">
		function renderMainPage() {
			window.location.replace("/MarketChase/loja/teste");
		}
	</script>
	
	<g:render template="/navs/navMain"></g:render>
	<br />
	<br />
	<div>
		<h1 class="col-md-offset-1">Cadastre sua loja</h1>
		<div class="container">
			<div class="row">
				<g:formRemote name="frmLoja"
					url="[controller:'loja', action:'salvar']" class="form-horizontal"
					onSuccess="renderMainPage()">
					<br />
					<div class="col-md-12">
						<div class="col-md-12 panel panel-default">
							<h4 class="col-sm-offset-1">
								<strong>Informações Gerais</strong>
							</h4>
							<hr />
							<g:render template="/loja/formularioLoja"></g:render>
						</div>
					</div>

					<div class="col-md-12">
						<div class="col-md-12 panel panel-default">
							<h4 class="col-sm-offset-1">
								<strong>Endereço</strong>
							</h4>
							<hr />
							<g:render template="/endereco/formularioEndereco"></g:render>

						</div>
					</div>

					<div class="col-md-12">
						<div class="col-md-12 panel panel-default">
							<h4 class="col-sm-offset-1">
								<strong>Contatos</strong>
							</h4>
							<hr />
							<g:render template="/contato/formularioContato"></g:render>


						</div>
					</div>
					<div class="col-sm-12">
						<a class="btn btn-default btn-lg" href="/MarketChase">Cancelar</a>
						<input type="submit" value="Salvar"
							class="btn btn-default btn-lg pull-right" />
					</div>
				</g:formRemote>
			</div>
		</div>
	</div>
	<br />
</body>
</html>
