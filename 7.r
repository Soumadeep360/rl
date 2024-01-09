library(dplyr)
library(ggplot2)

purchase_data<-data.frame(
  customer_data=c(101,102,103,104,105),
  purchase_amt=c(150,200,120,300,80)
)

mean_purchase<-mean(purchase_data$purchase_amt)
median_purchase<-median(purchase_data$purchase_amt)
sd_purchase<-sd(purchase_data$purchase_amt)

q1_purchase<-quantile(purchase_data$purchase_amt,probs=0.25)
q3_purchase<-quantile(purchase_data$purchase_amt,probs=0.75)

cat("Mean Purchase amount",mean_purchase,"\n")
cat("Median Purchase amount",median_purchase,"\n")
cat("Standard Deviation of Purchase Amounts:", sd_purchase, "\n")
cat("1st Quartile of Purchase Amounts:", q1_purchase, "\n")
cat("3rd Quartile of Purchase Amounts:", q3_purchase, "\n")

ggplot(purchase_data,aes(x=purchase_amt))+
  geom_histogram(binwidth=50,fill='red',color='black')+
  labs(title = "distribution of purchase amount",x='purchase amount',y='Frequency')
