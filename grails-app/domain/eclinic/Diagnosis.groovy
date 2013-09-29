package eclinic

class Diagnosis {
	
	String name
	String prescription
	Date dateCreated
	
	static belongsTo = [student: Student]
    
	static constraints = {
		prescription blank: false
    }
	
	String toString(){
		"${name}"
	}
}
