package marketchase
import comum.Usuario
class Pessoa {
	
	Usuario usuario
	
	static hasMany = [contatos: Contato]
	static hasOne = Categoria
	
	static belongsTo = [Usuario]
	
    static constraints = {
    }
}
