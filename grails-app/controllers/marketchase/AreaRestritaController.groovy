package marketchase

class AreaRestritaController {
	
	def springSecurityService

    def index() {
		
	}
	
	def logar () {
		render(template: "/navs/navMain")
	}
	
	def admin(){
		
		String usuario = springSecurityService.principal.username
		
		render(view: "/areaRestrita/admin", model: [usuario: usuario])
	}
	
	def logout(){
		render (view: "/index")
	}
}
