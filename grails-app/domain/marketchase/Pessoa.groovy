package marketchase

class Pessoa {
	
	static hasmany = [contatos: Contato]
	static hasone = Categoria
	
    static constraints = {
    }
}
