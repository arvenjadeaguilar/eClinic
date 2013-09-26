package eclinic

class Diagnosis {

	String idNumber
	String diagnosisId
	Date date

	static hasMany = [diagnosis: Diagnosis]
	static constraints = {
		diagnosis blank: false
	}
}
