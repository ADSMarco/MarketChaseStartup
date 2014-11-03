<div id="divMensagem"></div>
<g:uploadForm name="frmProduto" url="[controller: 'anuncio', action: 'salvar']" update="divMensagem" onSuccess="carregarLista()">
	<input type="file" value="Carregar Imagem" name="arquivo" id="arquivo" onChange="previewFile()"  accept=".jpg,.jpeg,.png" />
	<br />
	<br />
	Descrição : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea
		id="descricao" name="descricao">
		${anuncio.descricao}
	</textarea>
	<br />
	<br />
	Dt. Anuncio : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
		id="dataInicio" name="dataInicio"
		value="${anuncio.dataInicio.format("dd/MM/yyyy")}" />
	<br />
	<br />
	Dt. Vencimento : <input type="text" id="dataVencimento"
		name="dataVencimento"
		value="${anuncio.dataVencimento.format("dd/MM/yyyy")}" />
	<br />
	<br />
	<div id="imagem">
		<img id="imgAnuncio" src="">
	</div>
	<br />
	<br />
	<input type="submit" name="btnSalvar" id="btnSalvar" value="Salvar" onClick="cancelarInclusao();exibeLink()" />
	<input type="button" name="btnCanceler" value="cancelar" onClick="cancelarInclusao();exibeLink();" />
</g:uploadForm>
<br />
<br />
