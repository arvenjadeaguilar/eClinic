package eclinic

import org.springframework.dao.DataIntegrityViolationException
import groovy.sql.Sql

class HomeController {

	def dataSource
	 
	//def db = [url:'jdbc:postgresql://localhost:5432/eClinic', user:'postgres', password:'postgres', driver:'org.postgresql.Driver']
	//def sql = Sql.newInstance(db.url, db.user, db.password, db.driver)

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
	
	def graph(){
	
		render(template:"templates/graph")
	}
	def addStudent(){
		def db = new Sql(dataSource)
	
		
		
		println "parameters are" + params;
		println "name: " + params.fname +" "+params.mname+" "+params.lname+""+params.sex+""+params.month;
	
		def firstName = params.fname;
		db.execute("insert into clinicdb(fname,lname,mname,college) values('${firstName}')");
		
	}
}
