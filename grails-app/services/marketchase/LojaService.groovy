package marketchase

import grails.transaction.Transactional

@Transactional
class LojaService {

    def salvar(Loja loja) {
		
		if(!loja.hasErrors() && loja.save(flush:true)){
			return true
		}else{
			return false
		}
    }
}
