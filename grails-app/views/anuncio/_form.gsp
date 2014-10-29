<div id="divMensagem"></div>
<g:formRemote name="frmProduto" url="[controller: 'anuncio', action: 'salvar']" update="divMensagem" onSuccess="carregarLista()">
	<input type="file" name="foto"/>
	<br />
	Descricao : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="descricao">${anuncio.descricao}</textarea><br /><br />
	Dt. Anuncio : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="dataInicio" value="${anuncio.dataInicio.format("dd/MM/yyyy")}" /><br /><br />
	Dt. Vencimento : <input type="text" name="dataVencimento" value="${anuncio.dataVencimento.format("dd/MM/yyyy")}" /><br /><br />
	<input type="submit" name="btnSalvar" value="Salvar" onClick="cancelar()"/>
	<input type="button" name="btnCanceler" value="cancelar" onClick="cancelar()"/>
	<input type="hidden" name="id" value="${anuncio.id}" />
</g:formRemote>