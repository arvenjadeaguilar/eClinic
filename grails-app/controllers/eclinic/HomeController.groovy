package eclinic

import groovy.sql.Sql
class HomeController {
	 
	def db = [url:'jdbc:postgresql://localhost:5432/eClinic', user:'postgres', password:'password', driver:'org.postgresql.Driver']
	 def sql = Sql.newInstance(db.url, db.user, db.password, db.driver)
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
	
	
	def addStudent(){
		
		println "parameters are" + params;
		println "name: " + params.fname;
		
		def firstName = params.fname;
		sql.execute("insert into clinicdb(fname) values('${firstName}')");
		
	}
}
