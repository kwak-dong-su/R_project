## 내장된 함수
jumsu =c(1,7,4,2,3,9)
sort(jumsu)
print(jumsu)

jumsu.2=sort(jumsu)
print(jumsu.2)

jumsu.3=sort(jumsu, decreasing = TRUE)
print(jumsu.3)

str<-paste('굿','모닝','굿','나잇',sep=' ')
print(str)

str.2<-paste(1:12,'월',sep=' ')  #파이썬에서는 브로드캐스팅
print(str.2)

## 사용자 정의 함수(user-defined) => ppt(409)
mysum<-function(x){
  result<-x+100
  return(result)
}

sum1<-mysum(1000)
cat('100을 더한 결과는 ',sum1)

## 두 수를 더해서 결과값을 받아오는 함수를 정의
## 더한 결과값 출력1, 출력2, 둘을 더한 출력3
plus<-function(x,y){
  return(x+y)
}

plus(plus(100,200),plus(333,555))


install.packages('svDialogs')
library(svDialogs)

program<-function(){
  data.1<-as.numeric(dlgInput('숫자1 입력: ')$res)
  data.2<-as.numeric(dlgInput('숫자2 입력: ')$res)
  
  plus(data.1,data.2)
}

program()

plus<-function(x,y=100){
  return(x+y)
}

plus(200)
plus(200,10)


plus.minus<-function(x,y){
  return(list(s=x+y,m=x-y))
}

result=plus.minus(10,20)
cat('두 수의 더한값은 ',result$s)
cat('두 수의 더한값은 ',result$m)


## 사용자 이름 입력
## 사용자 키 입력
## 사용자 적정 몸무게 구하는 함수를 정의
## 사용자 몸무게 입력
## 적정 몸무게와 사용자 몸무게 비교
## '홍길동의 몸무게는 초과(또는 미달)입니다.



proper.weight<-function(x){
  return((x-100)*0.9)
}

program<-function(){
  name<-dlgInput('name :')$res
  tall<-as.numeric(dlgInput('tall :')$res)
  weight<-as.numeric(dlgInput('weight :')$res)
  
  p.weight<-proper.weight(tall)
  
  if(weight>p.weight)
    cat(name,'의 몸무게는 적정선 초과입니다.')
  else if (weight<p.weight)
    cat(name,'의 몸무게는 적정선 미만입니다.')
  else
    print('적정 몸무게입니다.')
    
    
}

program()


