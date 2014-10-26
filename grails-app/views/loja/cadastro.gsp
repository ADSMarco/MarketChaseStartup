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
	<h1 class="text-center">Cadastre sua loja</h1>
	<div class="container">
		<div class="row">
			<div class="tabbable">
				<ul class="nav nav-tabs nav-justified">
					<li id="tabInformacoes" class="active"><a
						href="#informacoesGerais" clicable="" data-toggle="tab"><h4>Informações
								Gerais</h4></a></li>
					<li id="tabEndereco"><a href="#endereco" data-toggle="tab"><h4>Endereço</h4></a></li>
					<li id="tabContato"><a href="#contato" data-toggle="tab"><h4>Contatos</h4></a></li>
				</ul>

				<g:formRemote name="frmLoja"
					url="[controller:'loja', action:'salvar']"
					class="form-horizontal">
					<div class="tab-content">
						<br />
						<div class="tab-pane active" id="informacoesGerais">

							<g:render template="/loja/formularioLoja"></g:render>

							<div class="col-sm-11">
								<a href="#endereco" data-toggle="tab"
									class="btn btn-default btn-lg pull-right"
									onclick="tabEndereco()"><span
									class="glyphicon glyphicon-arrow-right"></span></a>
							</div>
						</div>

						<div class="tab-pane" id="endereco">
							<div class="col-md-12">

								<g:render template="/endereco/formularioEndereco"></g:render>

								<div class="col-sm-11">
									<a href="#informacoesGerais" data-toggle="tab"
										class="btn btn-default btn-lg pull-left"
										onclick="tabInformacoes()"> <span
										class="glyphicon glyphicon-arrow-left"></span></a> <a
										href="#contato" data-toggle="tab" onclick="tabContato()"
										class="btn btn-default btn-lg pull-right"><span
										class="glyphicon glyphicon-arrow-right"></span></a>
								</div>
							</div>
						</div>

						<div class="tab-pane" id="contato">
							<div class="col-md-12">

								<g:render template="/contato/formularioContato"></g:render>

								<div class="col-sm-11">
									<a href="#endereco" data-toggle="tab" onclick="tabEndereco();"
										class="btn btn-default btn-lg pull-left"><span
										class="glyphicon glyphicon-arrow-left"></span></a> <input
										type="submit" value="Salvar"
										class="btn btn-default btn-lg pull-right" />

								</div>
							</div>
						</div>
					</div>
				</g:formRemote>

			</div>
		</div>
	</div>
	<br />

</body>
</html>
