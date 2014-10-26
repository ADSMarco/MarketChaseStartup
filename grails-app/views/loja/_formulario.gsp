<div class="container">
	<div class="row">
		<div class="tabbable">
			<ul class="nav nav-tabs nav-justified">
				<li class="active"><a href="#informacoesGerais"
					data-toggle="tab">Informações Gerais</a></li>
				<li><a href="#endereco" data-toggle="tab">Endereço</a></li>
				<li><a href="#contato" data-toggle="tab">Contatos</a></li>
			</ul>

			<g:formRemote name="frmLoja"
				url="[controller:'loja', action:'cadastro']" class="form-horizontal">
				<div class="tab-content">
					<br />
					<div class="tab-pane active" id="informacoesGerais">
						<div class="col-md-12">

							<div class="form-group">
								<label for="nomeLoja"
									class="col-sm-1 col-sm-offset-1 control-label">Loja</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" required="required"
										id="nomeLoja" placeholder="Nome da Loja">
								</div>
							</div>

							<div class="form-group">
								<label for="inputPassword"
									class="col-sm-1 col-sm-offset-1 control-label">Senha</label>
								<div class="col-sm-3">
									<input type="password" class="form-control" required="required"
										id="inputPassword" placeholder="Digite uma senha">
								</div>
								<label for="confirmaPassword" class="col-sm-2 control-label">Confirmação
									de senha</label>
								<div class="col-sm-3">
									<input type="password" class="form-control" required="required"
										id="confirmaPassword" placeholder="Confirme a sennha">
								</div>
							</div>

							<div class="form-group">
								<label for="nomeLoja" class="col-sm-2  control-label">Ramo
									de atuação</label>
								<div class="col-sm-3">
									<select name="categoria" id="categoriaLoja"
										class="form-control">
										<option value="1">Selecione uma Categoria</option>
										<option value="2">Qualquer1</option>
										<option value="3">Qualquer2</option>
										<option value="4">Qualquer3</option>
										<option value="5">Qualquer4</option>
										<option value="6">Qualquer5</option>
										<option value="7">Qualquer6</option>
										<option value="8">Qualquer7</option>
										<option value="9">Qualquer8</option>
										<option value="10">Qualquer9</option>
									</select>
								</div>
							</div>
							<div class="col-sm-8 col-sm-offset-2">
								<a href="#endereco" data-toggle="tab"
									class="btn btn-default btn-lg pull-right"><span
									class="glyphicon glyphicon-arrow-right"></span></a>
							</div>
						</div>
					</div>

					<div class="tab-pane" id="endereco">
						<div class="col-md-12">
							<div class="col-sm-8 col-sm-offset-2">
								<a href="#contato" data-toggle="tab"
									class="btn btn-default btn-lg pull-right"><span
									class="glyphicon glyphicon-arrow-right"></span></a>
							</div>
						</div>
					</div>

					<div class="tab-pane" id="contato">
						<div class="col-md-12">
							<br /> <br /> <br /> <br /> <br />t
						</div>
					</div>

				</div>
			</g:formRemote>

		</div>
	</div>
</div>
<br />
