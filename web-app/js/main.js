function tabEndereco() {
	jQuery('#tabEndereco').addClass("active");
	jQuery('#tabInformacoes').removeClass("active");
	jQuery('#tabContato').removeClass("active");
}

function tabInformacoes() {
	jQuery('#tabEndereco').removeClass("active");
	jQuery('#tabInformacoes').addClass("active");
	jQuery('#tabContato').removeClass("active");
}

function tabContato() {
	jQuery('#tabEndereco').removeClass("active");
	jQuery('#tabInformacoes').removeClass("active");
	jQuery('#tabContato').addClass("active");
}