<g:if test="${anuncios.size() > 0}">
	<table>
		<tr>
			<th>Descrição</th>
			<th>Dt. enviado</th>
			<th>Dt. vencimento</th>
			<th>Ativo</th>
		</tr>
		<g:each var="anuncio" in="${anuncios}">
			<tr>
				<th>
					${anuncio.descricao}
				</th>
				<th>
					${anuncio.dataInicio.format("dd/MM/yyyy")}
				</th>
				<th>
					${anuncio.dataVencimento.format("dd/MM/yyyy")}
				</th>
				<th>
					<g:if test="${anuncio.ativo}">
						<input type="checkbox" name="my-checkbox" checked onclick="mudarEstado('${anuncio.id}')">
					</g:if>
					<g:else>
						<input type="checkbox" name="my-checkbox" onclick="mudarEstado('${anuncio.id}')" id="chk${anuncio.id}">
					</g:else>
				</th>
				<th>
					<g:remoteLink controller="anuncio" action="alterar"
						update="divFormPeriodo" id="${anuncio.id}" onComplete="javascript:ocultaLink();">DefinirVencimento</g:remoteLink>
				</th>
			</tr>
			<tr>
				<th><div id="divFormPeriodo" class="span10 offset2"></div></th>
			</tr>
		</g:each>
	</table>
</g:if>
<g:else>
	Comece a Anunciar Clicando no link acima
</g:else>