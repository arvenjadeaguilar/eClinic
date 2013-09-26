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
	
	
	
	def graph(){
	
		render(template:"templates/graph")
	}
	
	//def addStudent(){
		//def db = new Sql(dataSource)
	
		
		
		//println "parameters are" + params;
		//println "name: " + params.fname +" "+params.mname+" "+params.lname+""+params.sex+""+params.month;
	
		//def firstName = params.fname;
		//db.execute("insert into clinicdb(fname,lname,mname,college) values('${firstName}')");
		
	//}
	
	def editPrescription() {
		def db = new Sql(dataSource)
		
		def diagnosisId = params.id
		def diagnosis = params.diagnosis
		def prescription = params.prescription
		
		db.execute("""UPDATE medical_history SET diagnosis='${diagnosis}', prescription='${prescription}' where id='${diagnosisId}'""")
		render(template:"templates/profile")
		
	}
	
	def diagnosisIdGenerate(){
		Date now = new Date()
		def date = g.formatDate(format:"yyyy", date:new Date())
		[date:date]

		Random random = new Random()
		String idCode = (String) random.nextInt(9000) + 1000
		String idNumber = date+"-"+idCode
		}
	
	
	def addDiagnosis(){
		def db = new Sql(dataSource)
		
		def diagnosisId = params.diagnosisId
		def diagnosis = params.diagnosis
		def studentId = params.studentId
		def today = new Date()
		
		db.execute(""""INSER INTO diag (idNumber, diagnosisId, date)
					   VALUES('${studentId}', '${diagnosisId}', '${today}'""")
					   
		db.execute(""""INSER INTO diagnosis (diagnosisId, diagnosis)
					   VALUES('${diagnosisId}', '${diagnosis}'""")
	}
	
	
	def searchprofile(){
		def db = new Sql(dataSource);
		def searchStudent = params.studentSearch;
		def confirm = db.execute("""SELECT * from Student WHERE last_name like '${searchStudent}'""");
		def student;
		
		if(confirm==true){
			student = db.rows("""SELECT * from Student WHERE last_name like '${searchStudent}'""");
			println "" + student.first_name +"";	
			}
		
		render(template:"templates/graph")
		
		
	}
}
