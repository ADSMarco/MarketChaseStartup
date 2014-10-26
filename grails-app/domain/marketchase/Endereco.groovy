package marketchase

class Endereco {
	
	String logradouro
	int numero
	String bairro
	String cidade
	String estado
	String referencia
	String complemento
	
	static belongsTo = Pessoa

    static constraints = {
    }
}
