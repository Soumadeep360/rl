library(forecast)

sales_data<-data.frame(
  months=seq(as.Date("2023-01-01"),as.Date("2023-06-01"),by="months"),
  sales=c(12000, 15000, 18000, 16000, 20000, 22000)
)

sales_ts=ts(sales_data$sales,frequency = 12)

arima_model=auto.arima(sales_ts)

forecast_result<-forecast(arima_model,h=3)

print(forecast_result)
