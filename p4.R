store_items<-character(0)
store_quantities<-numeric(0)

add_items<-function(item,quantity){
  store_items<<-c(store_items,item)
  store_quantities<<-c(store_quantities,quantity)
  cat("item added..\n")
}

update_items<-function(item,new_quantity){
  if(item %in% store_items){
    index<-which(store_items==item)
    store_quantities[index]<<-new_quantity
    cat("item updated..\n")
  }else{
    cat("item not found..\n")
  }
}
display<-function(){
  cat("Inventory items are:\n")
  for(i in 1:length(store_items)){
    cat("items: ",store_items[i]," quantity: ",store_quantities[i],"\n")
  }
}

while(TRUE){
  cat("1.add\n2.update\n3.display\n4.exit")
  choice=as.integer(readline("enter the choice:"))
  if(choice==1){
    item<-readline("enter the name of the item: \n")
    quantity<-as.integer( readline("enter the quantity:\n"))
    add_items(item,quantity)
  }else if(choice==2){
    item<-readline("enter the name of the item: \n")
    new_quantity<-as.integer( readline("enter the quantity:\n"))
    update_items(item,new_quantity)
  }else if(choice==3){
    display()
  }else if(choice==4){
    cat("Bye!!\n")
    break
  }else
    cat("Invalid!!\n")
}
