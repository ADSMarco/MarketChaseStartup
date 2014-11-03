package marketchase

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import grails.transaction.Transactional

@Transactional
class AnuncioService {
	
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
	 
	 def salvarAnuncio(CommonsMultipartFile imagem, String caminhoAplicacao){
		 StringBuilder nomeAnuncio = new StringBuilder(imagem.getOriginalFilename())
		 int posicaoPonto = nomeAnuncio.indexOf(".")
		 StringBuilder extensao = new StringBuilder(nomeAnuncio.substring(posicaoPonto, nomeAnuncio.length()))
		 nomeAnuncio.setLength(0)
		 nomeAnuncio.append("teste").append(extensao)
		 StringBuilder caminho = new StringBuilder(caminhoAplicacao)
		 caminho.append(nomeAnuncio)
		 File arquivo = new File(caminho.toString())
		 if (arquivo.exists()){
			 arquivo.delete()
		 }
		 imagem.transferTo(arquivo)
		 return arquivo.toString()
	 }
	 
}
