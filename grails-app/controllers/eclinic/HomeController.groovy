package eclinic

import org.springframework.dao.DataIntegrityViolationException
import groovy.sql.Sql
import jofc2.model.Chart
import jofc2.model.elements.LineChart
import jofc2.model.axis.YAxis
import jofc2.model.axis.XAxis
import jofc2.model.axis.Label
import jofc2.model.elements.AreaChart
import jofc2.model.elements.PieChart
import jofc2.model.axis.Label.Rotation
import jofc2.model.elements.BarChart
import jofc2.OFC
import jofc2.model.elements.FilledBarChart
import jofc2.model.elements.SketchBarChart
import jofc2.model.elements.HorizontalBarChart
import jofc2.model.elements.ScatterChart
import java.math.MathContext
import jofc2.model.elements.StackedBarChart
import jofc2.model.elements.StackedBarChart.StackValue
import jofc2.model.elements.AbstractDot



class HomeController {

	 static DOT_STYLE = new AbstractDot.Style(AbstractDot.Style.Type.DOT)
    static HOLLOW_STYLE = new AbstractDot.Style(AbstractDot.Style.Type.H0LLOW_DOT)

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
	
		//render(template:"templates/graph")
		render(view:"graph")
		
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
				
		def studentInstance = Student.findByIdNumber(studentId)
		println "ang student sa pag add ug diagnosis kai: " + studentInstance
		
		
		def diagnosisInstance = new Diagnosis(name: diagnosis ,prescription: prescription ,student: studentInstance).save(flush:true)
//		db.execute(""""INSERT INTO diagnosis (name, prescription, dateCreated)
//					   VALUES('${diagnosis}', '${prescription}','${today}'""")
		
		
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
		
	
    def PIE_CHART = {
        def pieChart = new PieChart()
        pieChart.setAnimate(true)
        Chart c = new Chart("Pie Chart").addElements(pieChart.setStartAngle(35).setBorder(2).setAlpha(0.6f).addValues(2, 3).addSlice(6.5f, "hello (6.5)").setColours("#d01f3c", "#356aa0", "#C79810").setTooltip("#val# of #total#<br>#percent# of 100%"));
        render c.toString();
    }

	
}