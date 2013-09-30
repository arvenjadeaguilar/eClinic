[1mdiff --git a/grails-app/conf/BootStrap.groovy b/grails-app/conf/BootStrap.groovy[m
[1mindex 1287dae..b346909 100644[m
[1m--- a/grails-app/conf/BootStrap.groovy[m
[1m+++ b/grails-app/conf/BootStrap.groovy[m
[36m@@ -1,7 +1,24 @@[m
[32m+[m[32mimport eclinic.*[m
[32m+[m[32mimport java.util.Date[m
 class BootStrap {[m
 [m
     def init = { servletContext ->[m
[32m+[m[32m        /* If there are no Students in the record. */[m
[32m+[m[32m        if (!Student.count()) {[m
[32m+[m[32m            createData()[m
[32m+[m[32m        }[m
     }[m
     def destroy = {[m
     }[m
[32m+[m[41m [m
[32m+[m[32m    private void createData() {[m[41m       [m
[32m+[m[41m [m
[32m+[m[32m        [Carlo: 'Apas', Ken: 'Villar', Arven: 'Aguilar', Jemuel: 'Racsa', Jervey: 'Benitez'].each {fName, lName ->[m
[32m+[m[32m            def student = new Student(firstName: fName, middleName:"Rubin",lastName: lName, college: "SCS", major:"BSCS", idNumber:"2010-0001",[m
[32m+[m									[32m  gender: "MALE", birthday: new Date(), address: "Iligan City", weight: "50kgs", height:"5.0", bloodType:"O").save(flush:true)[m
[32m+[m[32m            println "nka sulod ko"[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
 }[m
[41m+[m
[41m+	[m
\ No newline at end of file[m
[1mdiff --git a/grails-app/domain/eclinic/MedicalHistory.groovy b/grails-app/domain/eclinic/MedicalHistory.groovy[m
[1mindex 14f5807..efdd1f7 100644[m
[1m--- a/grails-app/domain/eclinic/MedicalHistory.groovy[m
[1m+++ b/grails-app/domain/eclinic/MedicalHistory.groovy[m
[36m@@ -5,7 +5,7 @@[m [mclass MedicalHistory {[m
 	String idNo[m
 	String diagnosis[m
 	[m
[31m-[m
[32m+[m	[32mstatic belongsTo = [student: Student][m
     static constraints = {[m
     }[m
 }[m
[1mdiff --git a/grails-app/domain/eclinic/Student.groovy b/grails-app/domain/eclinic/Student.groovy[m
[1mindex f7a1999..65deb53 100644[m
[1m--- a/grails-app/domain/eclinic/Student.groovy[m
[1m+++ b/grails-app/domain/eclinic/Student.groovy[m
[36m@@ -16,6 +16,7 @@[m [mclass Student {[m
 	String bloodType[m
 [m
 [m
[32m+[m	[32mstatic hasMany = [medicalHistories: MedicalHistory][m
     static constraints = {[m
     }[m
 }[m
