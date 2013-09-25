package eclinic

class Student {

	String firstName
	String middleName
	String lastName
	String college
	String major
	String idNumber
	String gender
	Date birthday
	String address
	String weight
	String height
	String bloodType


	static hasMany = [medicalHistories: MedicalHistory]
    static constraints = {
    }
}
