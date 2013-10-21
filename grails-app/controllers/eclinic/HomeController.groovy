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
import java.util.*;
import grails.plugins.springsecurity.Secured
@Secured('IS_AUTHENTICATED_FULLY')


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
		def newWeight = weight
		String newHeight = feet + "ft " + inch + "in"
		
		db.execute("""UPDATE student SET height='${newHeight}', weight='${newWeight}' where id_number='${idNumber}'""")
		def result = db.rows("SELECT * from student WHERE id_number='${idNumber}'")
		redirect(controller:'home',action:'searchprofile', params: [parameter:idNumber])
		
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
		def diagnosisTemp = params.diagnosis
		def prescriptionTemp = params.prescription;
		def studentId = params.studentId
		def today = new Date()
		def diagnosis = diagnosisTemp.toLowerCase();
		def prescription = prescriptionTemp.toLowerCase();

		
		def studentInstance = Student.findByIdNumber(studentId)
		println "ang student sa pag add ug diagnosis kai: " + studentInstance
		
		
		def diagnosisInstance = new Diagnosis(name: diagnosis ,prescription: prescription ,student: studentInstance).save(flush:true)
		
		def result = db.rows("SELECT * from student WHERE id_number='${studentId}'")
		
		String figure = result.get(0).height
		def feet = extractInts(figure).get(0)
		def inch = extractInts(figure).get(1)
		
		figure = result.get(0).weight
		def weight = extractInts(figure).get(0)
		
		
		//added
		def student = Student.findByIdNumber(studentId)
		
		
		
		render(template:"templates/profile", model:[result:result,parameter:studentId,feet:feet,inch:inch,weight:weight,student:student])
		
		
	}
	
	
	def searchprofile(){
			
		def db = new Sql(dataSource)
		def parameter = params.parameter
		
		def result = db.rows("SELECT * from student WHERE id_number='${parameter}'")
		
		if(result){
		
		String figure = result.get(0).height
		def feet = extractInts(figure).get(0)
		def inch = extractInts(figure).get(1)
		
		figure = result.get(0).weight
		def weight = extractInts(figure).get(0)
		
		
		//added
		def student = Student.findByIdNumber(parameter)
		
		render(template:"templates/profile", model:[result:result,parameter:parameter,feet:feet,inch:inch,weight:weight,student:student])
		}
		else{
			render(template:"templates/profileNotFound")
		}
		
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
		def year = params.id
		boolean enrolled = true
		def db = new Sql(dataSource)
		def total = db.rows("""select count(*) from student where enrolled = '${enrolled}' """)
		def sick = db.rows("""select count(*) from (select distinct student_id from diagnosis where extract(year from(date_created)) = '${year}') as x """)
		def well = total.get(0).count - sick.get(0).count
			
		System.out.println(total+ " " + "" +sick + " " + well)
		
        def pieChart = new PieChart()
        pieChart.setAnimate(true)
		Chart c = new Chart("Sick:Well Ratio for Year: " + year).addElements(pieChart.setStartAngle(35).setBorder(2).setAlpha(0.6f)
		.addSlice(sick.get(0).count,"Sick")
		.addSlice(well, "Well").setColours("#d01f3c", "#356aa0", "#C79810").setTooltip("#val# of #total#<br>#percent# of 100%"));
        render c.toString();
    }
	def BAR_CHART_3D = {

		def year = params.id

		def db = new Sql(dataSource)
		def result = db.rows("""select distinct name from diagnosis where extract(year from(date_created)) = '${year}'""");
		def result_count = db.rows("""select count(distinct name) from diagnosis where extract(year from(date_created)) = '${year}'""");
		
		def max_num;
		def max = 0;
		def legend_ratio;
		
		
		String[] label = new String[result_count.get(0).count]
		int[] value = new int[result_count.get(0).count] 
		for(int i=0;i<result_count.get(0).count;i++){
			label[i] = result.get(i).name;
			
		}
		
		for(int j=0;j<result_count.get(0).count;j++){
			def q = db.rows("""select count(name) from diagnosis where extract(year from(date_created)) = '${year}' and name = '${result.get(j).name}'""");
			value[j] = q.get(0).count
		}
		
		for(int k=0;k<result_count.get(0).count;k++)
		{
			if(value[k] > max)
			max = value[k];
			
		}
		
		String[] legend = new String[max+10];
		legend_ratio = (max)/10;
		def x;
		for(int l=0;l<max+10;l++)
		{
			if(l%10==0){
				
				legend[l] = l+10 ;
			}
			else{
				legend[l] =" ";
			}
			
		}
		
		
		System.out.println(max)
	
        def c = new Chart("Current Disease Trends for Year: " + year).setXAxis(new XAxis().setLabels(OFC.stringify(label))).setYAxis(new YAxis().setLabels(OFC.stringify(legend)));

        c.getXAxis().set3D(5);
        c.getXAxis().setColour("#909090");

        def e = new BarChart(BarChart.Style.THREED).setColour("#D54C78");

        Random r = new Random();


        for (int i = 0; i < result_count.get(0).count; ++i) {
            e.addValues(value[i]);
        }

        c.addElements(e);
        render c;

    }

	
	  def BAR_CHART = {

        render new Chart("Simple Bar Chart").addElements(new BarChart().addValues(9, 8, 7, 6, 5, 4, 3, 2, 1)).toString();

    }

    def BAR_CHART_GLASS = {
        render new Chart("Simple Bar Chart").addElements(new BarChart(BarChart.Style.GLASS).addValues(9, 8, 7, 6, 5, 4, 3, 2, 1)).toString();
    }
		
	def displayRatioOnYear(){
	
	println "the parameters are: " +params
	
	def year = params.chosenDate_year
	println "ang year kai: " + year
	
	
	render(view:"graph", model:[year:year])		
	}
	
	def displayRatioOnMonth(){
	
	println "the parameters are: " +params
	
	def month = params.month
	println "ang month kai: " + month
	
	
	render(view:"graph", model:[month:month])		
	}
	
	
	
	
	
	 def PIE_CHART_Month = {
		def month = params.id
		boolean enrolled = true
		def month_word= "null";
		System.out.println("ang month kay: "+month)
		
		def db = new Sql(dataSource)
		def total = db.rows("""select count(*) from student where enrolled = '${enrolled}' """)
		def sick = db.rows("""select count(*) from (select distinct student_id from diagnosis where extract(month from(date_created)) = '${month}' ) as x""")
		def well = total.get(0).count - sick.get(0).count
			
		System.out.println(total+ " " + "" +sick + " " + well)
		
		if(month=="01"){
		
			month_word = "January"
		}
		else if(month=="02"){
		
			month_word = "February"
		}
		else if(month=="03"){
		
			month_word = "March"
		}
		else if(month=="04"){
		
			month_word = "April"
		}
		else if(month=="05"){
		
			month_word = "May"
		}
		else if(month=="06"){
		
			month_word = "June"
		}
		else if(month=="07"){
		
			month_word = "July"
		}
		else if(month=="08"){
		
			month_word = "August"
		}else if(month=="09"){
		
			month_word = "September"
		}
		else if(month=="10"){
		
			month_word = "October"
		}
		else if(month=="11"){
		
			month_word = "November"
		}
		else if(month=="12"){
		
			month_word = "December"
		}
		
        def pieChart = new PieChart()
        pieChart.setAnimate(true)
		Chart c = new Chart("Sick:Well Ratio for month of: " + month_word).addElements(pieChart.setStartAngle(35).setBorder(2).setAlpha(0.6f)
		.addSlice(sick.get(0).count,"Sick")
		.addSlice(well, "Well").setColours("#d01f3c", "#356aa0", "#C79810").setTooltip("#val# of #total#<br>#percent# of 100%"));
        render c.toString();
    }
	
	
	def BAR_CHART_3D_Month = {

		def month = params.id
		def month_word = "null"
		def db = new Sql(dataSource)
		def result = db.rows("""select distinct name from diagnosis where extract(month from(date_created)) = '${month}'""");
		def result_count = db.rows("""select count(distinct name) from diagnosis where extract(month from(date_created)) = '${month}'""");
		
		def max_num;
		def max = 0;
		def legend_ratio;
		
		
		
		String[] label = new String[result_count.get(0).count]
		int[] value = new int[result_count.get(0).count] 
		for(int i=0;i<result_count.get(0).count;i++){
			label[i] = result.get(i).name;
			
		}
		
		for(int j=0;j<result_count.get(0).count;j++){
			def q = db.rows("""select count(name) from diagnosis where extract(month from(date_created)) = '${month}' and name = '${result.get(j).name}'""");
			value[j] = q.get(0).count
		}
		
		for(int k=0;k<result_count.get(0).count;k++)
		{
			if(value[k] > max)
			max = value[k];
			
		}
		
		String[] legend = new String[max+10];
		legend_ratio = (max)/10;
		def x;
		for(int l=0;l<max+10;l++)
		{
			if(l%10==0){
				
				legend[l] = l+10 ;
			}
			else{
				legend[l] =" ";
			}
			
		}
		
		
		
		if(month=="01"){
		
			month_word = "January"
		}
		else if(month=="02"){
		
			month_word = "February"
		}
		else if(month=="03"){
		
			month_word = "March"
		}
		else if(month=="04"){
		
			month_word = "April"
		}
		else if(month=="05"){
		
			month_word = "May"
		}
		else if(month=="06"){
		
			month_word = "June"
		}
		else if(month=="07"){
		
			month_word = "July"
		}
		else if(month=="08"){
		
			month_word = "August"
		}else if(month=="09"){
		
			month_word = "September"
		}
		else if(month=="10"){
		
			month_word = "October"
		}
		else if(month=="11"){
		
			month_word = "November"
		}
		else if(month=="12"){
		
			month_word = "December"
		}
		
		
		
		System.out.println(max)
	
        def c = new Chart("Current Disease Trends for Month of: " + month_word).setXAxis(new XAxis().setLabels(OFC.stringify(label))).setYAxis(new YAxis().setLabels(OFC.stringify(legend)));

        c.getXAxis().set3D(5);
        c.getXAxis().setColour("#909090");

        def e = new BarChart(BarChart.Style.THREED).setColour("#D54C78");

        Random r = new Random();


        for (int i = 0; i < result_count.get(0).count; ++i) {
            e.addValues(value[i]);
        }

        c.addElements(e);
        render c;

    }
	
	
}