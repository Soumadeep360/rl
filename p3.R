cal_fine<-function(days){
  if(days<=7){
    fine<-0
  }else if(days<=30){
    fine<-(days-7)*2
  }else{
    fine<-50
  }
  return (fine)
}

days<-as.integer(readline("enter the no. of days overdue:"))

cat("Fine Amount: ",cal_fine(days),"\n")
if(cal_fine(days)==0){
  cat("No fine. Thank you for returning the book on time!\n")
}else if(days>30){
  cat("Fine exceeds the maximum cap. Please contact the library.\n")
}else{
  cat("Please pay the fine within the specified period.\n")
}
