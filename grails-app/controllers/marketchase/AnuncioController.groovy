package marketchase

import java.text.DateFormat
import java.text.SimpleDateFormat

class AnuncioController {
	
	def anuncioService
	 
    def index() { 
		def lista = anuncioService.selecionar()
		render(view:"/anuncio/index",model:[anuncios: lista])
	}
	
	def lista(){
		def lista = anuncioService.selecionar()
		render(template:"/anuncio/lista",model:[anuncios: lista])
	}
	
	def anunciar(){
		Anuncio anuncio = new Anuncio()
		anuncio.descricao = ""
		anuncio.dataInicio =  new Date()
		anuncio.dataVencimento = new Date()
		render(template:"/anuncio/form", model:[anuncio:anuncio])
	}
	
	def alterar(){
		Anuncio anuncio = anuncioService.selecionar(params.id)
		render(template:"/anuncio/form", model:[anuncio:anuncio])
	}
	
	def excluir(){
		Anuncio anuncio = anuncioService.selecionar(params.id)
		anuncioService.excluir(anuncio)
		def lista = anuncioService.selecionar()
		render(template:"/anuncio/lista",model:[anuncios: lista])
	}
	
	def salvar(){
		Anuncio anuncio = null
		//def downloadedfile = request.getFile('file')
		//downloadedfile.transferTo(new File('C:/'))
		Locale localizacao = new Locale("pt","BR")
		SimpleDateFormat formatacao = new SimpleDateFormat("dd/MM/YYYY",localizacao)
		Date dataAtual = new Date()
		def dataAtualFormatada = g.formatDate(date:dataAtual, format: 'dd/MM/yyyy')
		dataAtual = formatacao.parse(dataAtualFormatada)
		if (params.id){
			anuncio = anuncioService.selecionar(params.id)
		}else{
			anuncio = new Anuncio()
		}
		anuncio.descricao      = params.descricao
		anuncio.dataInicio     = Date.parse("dd/MM/yyyy",params.dataInicio)//formatacao.parse(params.dataInicio)
		anuncio.dataVencimento = Date.parse("dd/MM/yyyy",params.dataVencimento)//formatacao.parse(params.dataVencimento)
		if ((dataAtual >= anuncio.dataInicio) && (dataAtual < anuncio.dataVencimento)){
			anuncio.ativo = true
		}else{
			anuncio.ativo = false
		}
		anuncio.foto = "teste"
		def valido = anuncioService.salvar(anuncio)
		if (valido){
			render("Anunciado !")
		}else{
			render("erro")
		}
	}
	
	def mudarEstado(){
		Anuncio anuncio = anuncioService.selecionar(params.id)
		anuncio.ativo = params.ativo.toBoolean()
		def valido = anuncioService.salvar(anuncio)
		if (valido){
			render("Anunciado !")
		}else{
			render("erro")
		}
	}
	
	def listaCliente(){
		def lista = Anuncio.list()
		render(template:"/anuncio/listaCliente", model:[anuncios: lista])
	}

}