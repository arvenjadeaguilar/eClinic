package eclinic

import org.springframework.dao.DataIntegrityViolationException
import groovy.sql.Sql

class HomeController {

	def idNum
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
		
		def idNumber = params.idNumber
		def feet = params.feet
		def inch = params.inch
		def weight = params.weight
		String newWeight = weight + "kgs"
		String newHeight = feet + "ft " + inch + "in"
		
		db.execute("""UPDATE student SET height='${newHeight}', weight='${newWeight}' where id_number='${idNumber}'""")
		def result = db.rows("SELECT * from student WHERE id_number='${idNumber}'")
		
		render(template:"templates/profile", model:[result:result,parameter:idNumber,feet:feet,inch:inch,weight:weight])
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
		
		def diagnosisId = diagnosisIdGenerate();
		def diagnosis = params.diagnosis
		def prescription = params.prescription;
		def studentId = params.studentId
		def today = new Date()
		
		db.execute(""""INSERT INTO diag (idNumber, diagnosisId, date)
					   VALUES('${studentId}', '${diagnosisId}', '${today}'""")
					   
		db.execute(""""INSERT INTO diagnosis (diagnosisId, name,prescription)
					   VALUES('${diagnosisId}', '${diagnosis}','${prescription}'""")
		
		System.out.println("diagnosisId"+diagnosisId+" diagnosis:"+diagnosis+" studentId:"+studentId);
	}
	
	
	def searchprofile(){
	
		idNum = params.parameter
		
		def db = new Sql(dataSource)
		def parameter = params.parameter
		
		def result = db.rows("SELECT * from student WHERE id_number='${parameter}'")
		
		String figure = result.get(0).height
		def feet = extractInts(figure).get(0)
		def inch = extractInts(figure).get(1)
		
		figure = result.get(0).weight
		def weight = extractInts(figure).get(0)
		
		
		//added
		def student = Student.findByIdNumber(parameter)
		
		
		
		render(template:"templates/profile", model:[result:result,parameter:parameter,feet:feet,inch:inch,weight:weight,student:student])
		
		
	}
	
	def extractInts( String input ) {
		input.findAll( /\d+/ )*.toInteger()
	}
	
	def viewStudentRatio(){
	

	
	}
	def route_diagnosis(){
		
		def idNum = params.studentId;
		
		System.out.println(idNum);
		
		render(template:"templates/diagnosis", model:[idNum:idNum]);
		
	}
	
	
}
