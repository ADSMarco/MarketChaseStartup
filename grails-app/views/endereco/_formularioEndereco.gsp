<div class="form-group">
	<label for="logradouro" class="col-sm-2 control-label">Logradouro</label>
	<div class="col-sm-8">
		<input type="text" class="form-control" required="required"
			id="nomeFantasia" name="logradouro"
			placeholder="Rua, Praça, Avenida, Alameda etc.">
	</div>
</div>

<div class="form-group">
	<label for="numero" class="col-sm-2 control-label">Número </label>
	<div class="col-sm-1">
		<input type="text" class="form-control" required="required"
			id="numero" name="numero" placeholder="N">
	</div>
	<label for="bairro" class="col-sm-2 control-label">Bairro </label>
	<div class="col-sm-5">
		<input type="text" class="form-control" required="required"
			id="bairro" name="bairro" placeholder="Bairro">
	</div>
</div>

<div class="form-group">
	<label for="complemento" class="col-sm-1 col-sm-offset-1 control-label">Complemento
	</label>
	<div class="col-sm-3">
		<input type="text" class="form-control" id="complemento"
			name="complemento">
	</div>
	<label for="estado" class="col-sm-1  control-label">Estado</label>
	<div class="col-sm-1">
		<select name="estado" id="estados" class="form-control"></select>
	</div>
	<label for="cidade" class="col-sm-1  control-label">Cidade</label>
	<div class="col-sm-2">
		<select name="cidade" id="cidades" class="form-control"></select>
	</div>
</div>

<div class="form-group">
	<label for="referencia" class="col-sm-2 control-label">Ponto de
		Referência </label>
	<div class="col-sm-8">
		<input type="text" class="form-control" required="required"
			id="numero" name="numero" placeholder="Proximo à, ao lado de ...">
	</div>
</div>

<script type="text/javascript">
jQuery(document).ready(function () {
    
	jQuery.getJSON('../js/estados.json', function (data) {

        var items = [];
        var options = '<option value="">--</option>';    

        jQuery.each(data, function (key, val) {
            options += '<option value="' + val.sigla + '">' + val.sigla + '</option>';
        });                 
        jQuery("#estados").html(options);                
        
        jQuery("#estados").change(function () {              
        
            var options_cidades = '';
            var str = "";                   
            
            jQuery("#estados option:selected").each(function () {
                str += $(this).text();
            });
            
            jQuery.each(data, function (key, val) {
                if(val.sigla == str) {                           
                	jQuery.each(val.cidades, function (key_city, val_city) {
                        options_cidades += '<option value="' + val_city + '">' + val_city + '</option>';
                    });                         
                }
            });

            jQuery("#cidades").html(options_cidades);
            
        }).change();        
    
    });

});
</script>
