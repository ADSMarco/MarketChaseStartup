package marketchase

class Loja extends Pessoa {
	
	String nomeFantasia
	String razaoSocial
	String cnpj

    static constraints = {
		
		
    }
	
	static mapping = {
		
		discriminator value:"Loja"
	}
}
