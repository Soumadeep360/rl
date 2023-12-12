
students_name<-c("John", "Anna", "Tim", "Harry", "Pal",  "Jim",  
                 "Peter",  "Bob", " Cook", "James")
course_marks<-matrix(c(
  85, 92, 78, 88, 95,
  88, 89, 78,77,81, 
  75, 80, 85, 70, 60,
  90, 67, 70,89,87, 
  100, 78, 56, 34, 56,
  45, 78, 97,66,89, 
  78, 45, 67, 89, 90,
  56, 89, 67,99,98, 
  89,80,67,78,90,
  67, 78,90, 78, 78 
),nrow = 10,byrow=TRUE)

student_report<-list()
for(i in 1:10){
  tot<-sum(course_marks[i,])
  avg<-tot/5
  if(avg>=90)grade<-"A"
  else if(avg>=80) grade<-"B"
  else if(avg>=70)grade<-"C"
  else if(avg>=60)grade<-"D"
  else grade<-"F"
  student_report<-c(student_report,list(list(name=students_name[i],marks=course_marks[i,],
                            total=tot,average=avg,grade=grade)))
}
cat("Report:\n")
for(student in student_report){
  cat("Name:",student$name,"\n")
  cat("marks:",student$marks,"\n")
  cat("total:",student$total,"\n")
  cat("average:",student$average,"\n")
  cat("Grade:",student$grade,"\n")
}
