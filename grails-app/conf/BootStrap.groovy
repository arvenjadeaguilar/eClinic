import eclinic.*
import java.util.Date
class BootStrap {

    def init = { servletContext ->
        /* If there are no Students in the record. */
        if (!Student.count()) {
            createData()
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
    }
}

	