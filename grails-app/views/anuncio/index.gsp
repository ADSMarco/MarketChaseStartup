<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>MarketChase - Lista de Anúncios</title>
	<g:javascript library="jquery"/>
	<script type="text/javascript">
		function carregarLista(){
			<g:remoteFunction controller="anuncio" action="lista" update="divLista"/>
		}

		function excluir(id){
			if (confirm("Deseja realmente excluir ?")){
				<g:remoteFunction controller="anuncio" action="excluir" update="divLista" id="'+id+'" />
			}
		}

		function cancelar(){
			jQuery("#divForm").html("")
		}

		function mudarEstado(id,componente){
			var ativo = (jQuery("#chk" + id).is(':checked'))
			<g:remoteFunction controller="anuncio" action="mudarEstado" id="'+id+'" params="'ativo='+ativo"/>
		}
		
	</script>
</head>
<body>
<g:render template="/navs/navMain" ></g:render>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">                        
			<g:remoteLink controller="anuncio" action="anunciar" update="divForm" onClick="">Anunciar</g:remoteLink>
			<div id="divLista" class="span10 offset2">
				<g:render template="lista" model="[anuncios: anuncios]"></g:render>
			</div>
			<div id="divForm" class="span10 offset2">
			</div>
		</div>
	</div>
</body>
</html>