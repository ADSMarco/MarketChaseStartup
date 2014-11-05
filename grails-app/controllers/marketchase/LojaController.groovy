package marketchase

class LojaController {

	def index () {
		render (view: "/loja/cadastro")
	}
	
    def cadastro() {
		render (view:"/loja/cadastro")//por enquanto
	}
	
	def salvar(){
		
		render (view:"/loja/teste")
		
	}
}
