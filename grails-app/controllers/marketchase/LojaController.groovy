package marketchase

class LojaController {

    def cadastro() {
		render (view:"/loja/cadastro")//por enquanto
	}
	
	def salvar(){
		
		render (view:"/loja/teste")
		
	}
	def desativar() {
			Loja lojaNova = new Loja()
			lojaNova.status = 0
			lojaNova.nomeFantasia = "Teste1"
			lojaNova.razaoSocial = "teste1"
			lojaNova.cnpj = "123456789"
			lojaNova.validate()
			if(!lojaNova.hasErrors()){
				lojaNova.save(flush:true)
				render (view:"/loja/desativarLoja")//por enquanto
			}
			render (view:"/loja/desativar")//por enquanto
		}
		def desativarLoja() {
			
			
			
			//Loja loja = Loja.get(params.id)
			Loja loja = Loja.get(1)
			if(loja.status==1){
				loja.status = 0
				
			}else{
				loja.status = 1//Teste para ativar
			}
			
			
			loja.validate()
			if(!loja.hasErrors()){
				loja.save(flush:true)
				render (view:"/loja/desativarLoja")//por enquanto
			}
			
		}
}
