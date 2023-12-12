products<-list(
  list(name="apple",price=123),
  list(name="mango",price=130),
  list(name="guava",price=124)
)

cart_to_be_added<-list(
  list(name="apple",quantity=3),
  list(name="mango",quantity=5)
)

shopping_cart<-list()

for(item in cart_to_be_added){
  flag<-0
  for(p in products){
    if(item$name==p$name){
      shopping_cart<-c(shopping_cart,list(
        list(name=item$name,price=p$price,quantity=item$quantity)))
      flag<-1;
      break;
    }
  }
  if(flag==1){
    cat("Item added\n")
  } else{
    cat("Product not found\n")
  }
}
subtotal<-0
cat("Receipt:\n")
for(item in shopping_cart){
  cat(sprintf("%s (%d units) Price:$%.2f Subtotal:$$%.2f\n",
              item$name,item$quantity,item$price,item$price*item$quantity))
  subtotal<-subtotal+(item$price*item$quantity)
}
cat(sprintf("Subtotal:$%.2f",subtotal))
cat((sprintf("tax_amount:$%.2f",subtotal*0.08)))
cat(sprintf("Total cost:$%.2f",subtotal+(subtotal*0.08)))


