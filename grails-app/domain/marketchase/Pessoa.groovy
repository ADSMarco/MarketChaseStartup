package marketchase

import javax.persistence.DiscriminatorColumn;

class Pessoa {
	
	static hasmany = [contatos: Contato]
	static hasone = Categoria
	
    static constraints = {
    }
	
	static mapping = {
		
		discriminator column : "tipo", value:"GERAL"
	}
}
