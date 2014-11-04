package marketchase

class Contato {

	String valor
	String tipo
	
	static belongsTo = [pessoa:Pessoa]
	
    static constraints = {
    }
}
