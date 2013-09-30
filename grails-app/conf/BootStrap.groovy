import eclinic.*
import java.util.Date
class BootStrap {

    def init = { servletContext ->
        /* If there are no Students in the record. */
        if (!Student.count()) {
            createData()
        }
		
		def medicine = "Paracetamol"
		def diagnosisName1 = "fever"
		def diagnosisName2 = "colds"
		def diagnosisName3 = "dengue"
		def diagnosisName4 = "chicken pox"
		
		if(!Diagnosis.count()){
			Student.list().each{
				def diagnosis1 = new Diagnosis(name: diagnosisName1 ,prescription: medicine ,student: it).save(flush:true)
				def diagnosis2 = new Diagnosis(name: diagnosisName2 ,prescription: medicine ,student: it).save(flush:true)
				def diagnosis3 = new Diagnosis(name: diagnosisName3 ,prescription: medicine ,student: it).save(flush:true)
				def diagnosis4 = new Diagnosis(name: diagnosisName4 ,prescription: medicine ,student: it).save(flush:true)
			}
		}
    }
    def destroy = {
    }
 
    private void createData() {       
 
        [Carlo: 'Apas', Ken: 'Vilar', Arven: 'Aguilar', Jemuel: 'Racsa', Jervey: 'Benitez'].each {fName, lName ->
            def student = new Student(firstName: fName, middleName:"Rubin",lastName: lName, college: "SCS", major:"BSCS", idNumber:"2010-0001",
									  gender: "MALE", birthday: new Date(), address: "Iligan City", weight: "50kgs", height:"5.0", bloodType:"O").save(flush:true)
            println "nka sulod ko"
        }
		int id = 100
		for(int i=0; i<100; i++){
			
			
			String studentName = "Student" + i
			def student = new Student(firstName: studentName, middleName:studentName,lastName:studentName, college: "SCS", major:"BSCS", idNumber:"2010-0"+id,
									  gender: "MALE", birthday: new Date(), address: "Iligan City", weight: "50kgs", height:"5.0", bloodType:"O").save(flush:true)
			id++
		
		
		}
    }
}

	