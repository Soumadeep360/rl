library(dplyr)

student_data<-data.frame(
  name=character(0),
  math_score=numeric(0),
  science_score=numeric(0),
  history_score=numeric(0),
  attendance=numeric(0)
)
add_student<-function(namep,math_scorep,science_scorep,history_scorep,attendancep){
  student_data <<- bind_rows(student_data, data.frame(
    name = namep,
    math_score = math_scorep,
    science_score = science_scorep,
    history_score = history_scorep,
    attendance = attendancep
  ))
}
cal_avg<-function(){
  avg<-student_data %>% 
    mutate(Avg_scores=(math_score+science_score+history_score)/3) %>% 
  select(name,Avg_scores)
  return (avg)
}
cal_lowAttendance<-function(threshold){
low_attendance<-student_data %>%
  filter(attendance<threshold) %>%
  select(name,attendance)
return (low_attendance)
}
report_gen<-function(){
avg<-cal_avg()
low<-cal_lowAttendance(75)

report<-merge(avg,low,by="name",all=TRUE)
report$attendance[is.na(report$attendance)]<-100

cat("Performance report:\n") 
print(report)
}

while (TRUE) { 
  cat("\n1. Add Student\n2. Generate Report\n3. Exit\n") 
  choice <- as.integer(readline("Enter your choice: ")) 
  if (choice == 1) { 
    name <- readline("Enter student name: ") 
    math_score <- as.numeric(readline("Enter math score: ")) 
    science_score <- as.numeric(readline("Enter science score: ")) 
    history_score <- as.numeric(readline("Enter history score: ")) 
    attendance <- as.numeric(readline("Enter attendance percentage: ")) 
    add_student(name, math_score, science_score, history_score, attendance) 
  } else if (choice == 2) { 
    
    report_gen() 
  } else if (choice == 3) { 
    cat("Exiting the program. Goodbye!\n") 
    break 
  } else { 
    cat("Invalid choice. Please try again.\n") 
  } 
} 
