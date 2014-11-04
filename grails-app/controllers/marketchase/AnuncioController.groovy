package marketchase

import java.text.DateFormat
import java.text.ParseException;
import java.text.SimpleDateFormat
import java.util.concurrent.ConcurrentSkipListMap.Index;

import javassist.bytecode.stackmap.BasicBlock.Catch;

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
		render(template:"/anuncio/Periodo", model:[anuncio:anuncio])
	}

	def salvar(){
		Anuncio anuncio = new Anuncio()
		Locale localizacao = new Locale("pt","BR")
		SimpleDateFormat formatacao = new SimpleDateFormat("dd/MM/yyyy")
		def dataAtual = (new Date()).format("dd/MM/yyyy")
		String caminhoAplicacao = request.getSession().getServletContext().getRealPath("/").toString()
		try{
			//anuncio.foto = anuncioService.salvarAnuncio(params.arquivo,caminhoAplicacao)
		}catch(Throwable ex){
		}
		anuncio.descricao      = params.descricao
		try{
			anuncio.dataInicio     = formatacao.parse(params.dataInicio)
			anuncio.dataVencimento = formatacao.parse(params.dataVencimento)
		}catch(ParseException ex){
		}
		if ((dataAtual >= anuncio.dataInicio.toString()) && (dataAtual < anuncio.dataVencimento.toString())){
			anuncio.ativo = true
		}else{
			anuncio.ativo = false
		}
			def valido = anuncioService.salvar(anuncio)
		if (valido){
			redirect(action:"index")
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

	def alterarPeriodo(){
		Anuncio anuncio = anuncioService.selecionar(params.id)
		Locale localizacao = new Locale("pt","BR")
		SimpleDateFormat formatacao = new SimpleDateFormat("dd/MM/yyyy",localizacao)
		Date dataAtual = new Date()
		def dataAtualFormatada = g.formatDate(date:dataAtual, format: 'dd/MM/yyyy')
		dataAtual = formatacao.parse(dataAtualFormatada)
		anuncio.dataInicio     = formatacao.parse(params.dataInicio)
		anuncio.dataVencimento = formatacao.parse(params.dataVencimento)
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

	def excluir(){
		Anuncio anuncio = anuncioService.selecionar(params.id)
		anuncioService.excluir(anuncio)
		def lista = anuncioService.selecionar()
		render(template:"/anuncio/lista",model:[anuncios: lista])
	}
}

