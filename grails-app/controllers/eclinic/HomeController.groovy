package eclinic

class HomeController {

    def index() { }

	
	def student(){
		
		render(template:"templates/student")
	}
	
	def profile(){
		
		render(template:"templates/profile")
	}
	
	def inventory(){
		
		render(template:"templates/inventory")
	}
}
