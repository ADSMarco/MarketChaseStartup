
<div class="form-group">
	<label for="nomeFantasia" class="col-sm-2 control-label">Nome
		Fantasia</label>
	<div class="col-sm-8">
		<input type="text" class="form-control" required="required"
			id="nomeFantasia" name="nomeFantasia" placeholder="Nome da Loja">
	</div>
</div>

<div class="form-group">
	<label for="razaoSocial" class="col-sm-2 control-label">Razão
		Social </label>
	<div class="col-sm-8">
		<input type="text" class="form-control" required="required"
			id="razaoSocial" name="razaoSocial" placeholder="Razão Social">
	</div>
</div>

<div class="form-group">
	<label for="cnpj" class="col-sm-2  control-label">CNPJ</label>
	<div class="col-sm-3">
		<input type="text" name="cnpj" id="cnpj"
			placeholder="Somente Números" class="form-control">

	</div>
	<label for="categoriaLoja" class="col-sm-2  control-label">Ramo
		de atuação</label>
	<div class="col-sm-3">
		<select name="categoria" id="categoriaLoja" class="form-control">
			<g:each var="categoria" in="${categorias}">
				<option value="${categoria.id}">
					${categoria.nome}
				</option>
			</g:each>
		</select>
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
