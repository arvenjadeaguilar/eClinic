package eclinic

class Diagnosis {
	
	String prescription
	
	static belongsTo = [student: Student]
    
	static constraints = {
		prescription blank: false
    }
	
	String toString(){
		
	}
}
