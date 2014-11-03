<div id="divMensagem"></div>
<g:formRemote name="frmPeriodo" url="[controller: 'anuncio', action: 'alterarPeriodo']" update="divMensagem" onSuccess="carregarLista()">
	Dt. Anuncio : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="dataInicio" value="${anuncio.dataInicio.format("dd/MM/yyyy")}" /><br /><br />
	Dt. Vencimento : <input type="text" name="dataVencimento" value="${anuncio.dataVencimento.format("dd/MM/yyyy")}" /><br /><br />
	<input type="submit" name="btnSalvar" value="Salvar" onClick="cancelarAlteracao()"/>
	<input type="button" name="btnCanceler" value="cancelar" onClick="cancelarAlteracao()"/>
	<input type="hidden" name="id" value="${anuncio.id}" />
</g:formRemote>