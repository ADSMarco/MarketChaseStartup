
package marketchase

class LojaController {
	
	def lojaService

    def cadastro() {
		def listaCategorias = Categoria.list()
		render (view:"/loja/cadastro", model:[categorias:listaCategorias])
	}
	
	def salvar(){
		
		/*Loja loja = new Loja()
		loja.nomeFantasia = params.nomeFantasia
		loja.razaoSocial = params.razaoSocial
		loja.cnpj = params.cnpj
		loja.categoria = Categoria.get(params.categoria)*/
		
		Categoria categoria = Categoria.get(1)
		Loja loja = new Loja()
		loja.nomeFantasia = "Loja"
		loja.razaoSocial = "Razão Social"
		loja.cnpj = "12345678910"
		loja.categoria = categoria
		
		
		println(loja.razaoSocial)
		
		
		loja.save(flush:true)
		//lojaService.salvar(loja)
		
		/*String mensagem
		if(lojaService.salvar(loja))
			mensagem = "OK"
		else
			mensagem = "!OK"
			
		println(mensagem)
		*/
		render (view:"/error")
	}
	
	def teste(){
		render (view:"/index")
	}
}
