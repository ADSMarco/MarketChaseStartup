<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>MarketChase - Lista de Anúncios</title>
<g:javascript library="jquery" />
<g:javascript libary="/js" />
</head>
<body>
	<g:render template="/navs/navMain"></g:render>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div id="lnkAnunciar">
					<g:remoteLink controller="anuncio" action="anunciar"
						update="divForm" onComplete="ocultaLink()">Anunciar</g:remoteLink>
				</div>
				<div id="divLista" class="span10 offset2">
					<g:render template="lista" model="[anuncios: anuncios]"></g:render>
				</div>
			</div>
			<div id="divForm" class="span10 offset2">
			</div>
		</div>
	</div>
	<script type="text/javascript">

	function previewFile() {
		var preview = document.querySelector("#imgAnuncio");
		var file = document.querySelector("#arquivo").files[0]; 
		var reader = new FileReader();

		reader.onloadend = function() {
			preview.src = reader.result;
		}

		if (file) {
			reader.readAsDataURL(file);
		} else {
			preview.src = "";
		}
	}
	
		function carregarLista() {
			<g:remoteFunction controller="anuncio" action="lista" update="divLista"/>
		}

		function excluir(id) {
			if (confirm("Deseja realmente excluir ?")) {
				<g:remoteFunction controller="anuncio" action="excluir" update="divLista" id="'+id+'" />
			}
		}

		function cancelarInclusao() {
			jQuery("#divForm").html("")
		}

		function cancelarAlteracao() {
			jQuery("#divFormPeriodo").html("")
			exibeLink()
		}

		function mudarEstado(id, componente) {
			var ativo = (jQuery("#chk" + id).is(':checked'))
			<g:remoteFunction controller="anuncio" action="mudarEstado" id="'+id+'" params="'ativo='+ativo"/>
		}

		function ocultaLink() {
			jQuery("#lnkAnunciar").hide();
		}

		function exibeLink() {
			jQuery("#lnkAnunciar").show();
		}
		
	</script>
</body>
</html>