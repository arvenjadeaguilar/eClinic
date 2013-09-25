package eclinic

class MedicalHistory {
	
	String idNo
	String diagnosis
	
	static belongsTo = [student: Student]
    static constraints = {
    }
}
