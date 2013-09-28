package eclinic

import org.springframework.dao.DataIntegrityViolationException
import groovy.sql.Sql

class HomeController {

	def dataSource
	 
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
	
	
	def editPrescription() {
		def db = new Sql(dataSource)
		
		def diagnosisId = params.id
		def diagnosis = params.diagnosis
		def prescription = params.prescription
		
		db.execute("""UPDATE medical_history SET diagnosis='${diagnosis}', prescription='${prescription}' where id='${diagnosisId}'""")
		render(template:"templates/profile")
		
	}
	
	def editStudentInfo() {
		def db = new Sql(dataSource)
		
		def idNumber = params.id
		def newHeight = params.height
		def newWeight = params.weight
		
		db.execute("""UPDATE student SET height='${newHeight}', weight='${newWeight}' where id_number='${idNumber}'""")
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
		
		db.execute(""""INSERT INTO diag (idNumber, diagnosisId, date)
					   VALUES('${studentId}', '${diagnosisId}', '${today}'""")
					   
		db.execute(""""INSERT INTO diagnosis (diagnosisId, diagnosis)
					   VALUES('${diagnosisId}', '${diagnosis}'""")
	}
	
	
	def searchprofile(){
		//def db = new Sql(dataSource);
		//def parameter = params.parameter;
		//def confirm = db.execute("""SELECT * from Student WHERE id_number like '${parameter}'""");
		//def student;
		
		def db = new Sql(dataSource)
		def parameter = params.parameter
		def result
		
		if(!parameter) {
			result = db.rows("select * from student")
		}
		
		else {
			String query = """SELECT * from student WHERE id_number like '${parameter}'"""
			result = db.rows(query)
			println "" + result.id_number +"";	
		}
		
		//if(confirm==true){
			//student = db.execute("""SELECT * from Student WHERE id_number like '${parameter}'""");
			//println "" + student.id_number +"";	
			//}
		
		render(template:"templates/profile", model:[result:result,parameter:parameter])
		
		
	}
}
