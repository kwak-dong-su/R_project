mysum<-function(x){
  result<-x+100
  return(result)
}

plus<-function(x,y){
  return(x+y)
}

program<-function(){
  data.1<-as.numeric(dlgInput('숫자1 입력: ')$res)
  data.2<-as.numeric(dlgInput('숫자2 입력: ')$res)
  
  plus(data.1,data.2)
}
