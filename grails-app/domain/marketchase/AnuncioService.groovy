package marketchase

import grails.transaction.Transactional

@Transactional
class AnuncioService {

    def serviceMethod() {

    }
	
	def excluir(Anuncio anuncio){
		anuncio.delete(flush:true)
	}
	
	def salvar(Anuncio anuncioSalvar){
		Anuncio anuncio
		anuncio = anuncioSalvar
		anuncio.validate()
		if (!anuncio.hasErrors() && (anuncio.save(flush:true))){
			return true
		}else{
			return false
		}
	}
	
	def selecionar(){
		def anuncio = Anuncio.list()
		return anuncio
	}
	 def selecionar(def id){
		 def anuncio = Anuncio.get(id)
		 return anuncio
	 }
}