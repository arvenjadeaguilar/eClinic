package eclinic

class Diagnosis {
	
	String diagNum
	String diagnosis
	
	static belongsTo = [diagnosis: Diag]
    static constraints = {
    }
}
