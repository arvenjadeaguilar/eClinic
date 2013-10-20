import eclinic.*
import java.util.Date
class BootStrap {

    def init = { servletContext ->
        /* If there are no Students in the record. */
        if (!Student.count()) {
            createData()
        }
		if (!Admin.count()) {
            createAdmin()
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
 
		int id = 100
		for(int i=0; i<100; i++){
			
			
			String studentName = "Student" + i
			def student = new Student(firstName: studentName, middleName:studentName,lastName:studentName, college: "SCS", major:"BSCS", idNumber:"2010-0"+id,
									  gender: "MALE", birthday: new Date(), address: "Iligan City", weight: 50, height:"5ft 5in", bloodType:"O", enrolled:true).save(flush:true)
			id++
		
		
		}
		
		 def userRole = new Authority(authority: 'ROLE_USER').save()
 
        /* The default password for all user. No need to encode here to avoid double encoding. */
        String password = 'password'
 
        [username: 'Admin', carlo: 'Carlo Joel Apas', ken: 'Ken Vilar', arven: 'Arven Jade Aguilar', jemuel: 'Jemuel Racsa', jervey: 'Jervey Benitez'].each { userName, realName ->
            def user = new Admin(username: userName, password: password, enabled: true).save()
            AdminAuthority.create user, userRole, true
        }
    }
		def createAdmin() {
			 /* The default password for all user. No need to encode here to avoid double encoding. */
        String password = 'password'
		def userRole = new Authority(authority: 'ROLE_USER').save()
 
        [username: 'Admin', carlo: 'Carlo Joel Apas', ken: 'Ken Vilar', arven: 'Arven Jade Aguilar', jemuel: 'Jemuel Racsa', jervey: 'Jervey Benitez'].each { userName, realName ->
            def user = new Admin(username: userName, password: password, enabled: true).save()
            AdminAuthority.create user, userRole, true
			}
		}

	}