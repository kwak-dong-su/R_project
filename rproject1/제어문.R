num<-55

if(num>50){
  print('50보다 크다.')
}else{
  print('50보다 작다.')
}


# 3항 연산자
result<-ifelse(num>50, '크다', '작다')
cat('50보다',result)

###############

for(x in 1:5){
  print(x)
}

for(x in c(1, 5, 6, 7)){
  print(x)
}

array <- c(100, 300, 555)

for(x in array){
  print(x)
}

print(array[1])

for(x in 1:3){
  print(array[x])
}

result2<-c(array, 455)
print(result2)

result2[4]<-777
print(result2)

result2[c(1,3)]<-c(222,999)
print(result2)

result2[1:2]<-55:56
print(result2)

result2[5]<-888
print(result2)

result2<-append(result2, 333, after = 1)
print(result2)

result3=c()
values=c(99,22,44,55,88,77,11,33)
## 각각의 값들이 짝수인지 판별해서, 'even', 'odd'
for(x in values){
  result3<-append(result3, ifelse(x%%2==0,'even','odd'))
}
print(result3)


#입력값 받아서 names3에 누적시켜보세요.
names<-c()

for(x in 1:8){
  names<-append(names, dlgInput('name')$res)
}

print(names)

df<-data.frame(names, values, result3)
print(df)
print(class(df))
print(class(values))
str(df)
dim(df)
head(df, 3)
tail(df, 2)
df[1,]
df[1,1]
df[1:2, 1:2]

#행(1,3,5), 열(1,3)
df[c(1,3,5), c(1,3)]

df2<-subset(df, result3=='even')
print(df2)

#df에서 values가 50이상
#df에서 values가50미만이면서 result3가 even인 것을 찾아서 df3에 저장
result3 <- subset(df, values < 50 & result3 == 'even' )


df[4,1]='kim'
df[7,1]='kim'
df

library(ggplot2)
table(df$names)
ggplot(df, aes(x=names, y=values))+geom_point()

# 5명의 정보를 데이터프레임에 넣어서 그래프로 그려보세요.
ggplot(df,aes(x=name,y=com.score))+geom_bar(stat="identity")
ggplot(df, aes(x=name, y=eng.score))+geom_point()
ggplot(df, aes(x=com.score, y=eng.score))+geom_bin2d()
# 이름, 나이, 컴퓨터 점수, 영어 점수
name<-c()
for(x in 1:5){
  name<-append(name, dlgInput('name')$res)
}
age<-c()
for(x in 1:5){
  age<-append(age, as.numeric(dlgInput('age')$res))
}
com.score<-c()
for(x in 1:5){
  com.score<-append(com.score, as.numeric(dlgInput('com.score')$res))
}
eng.score<-c()
for(x in 1:5){
  eng.score<-append(eng.score, as.numeric(dlgInput('eng.score')$res))
}
df<-data.frame(name, age, com.score, eng.score)
df
# df에서 추출(각 컬럼을 추출하여 프린트)
print(df['name'])
print(df['age'])
print(df['com.score'])
print(df['eng.score'])
# 이름에 해당하는 나이를 그래프로 그려보세요.
ggplot(df,aes(x=name,y=age))+geom_bar(stat="identity")
# 나이의 평균
mean(df$age)
# 최고 영어 점수
max(df$eng.score)
# 3번째 행, 3번째 열의 값
df[3,3]
# 1~3행 (2,4)열의 값
df[1:3,c(2,4)]
# 영어점수가 평균보다 높은 사람들만 df_new로 저장
df_new <- subset(df, eng.score > mean(df$eng.score))
df_new
#---------------------------
#컴퓨터 점수와 영어 점수를 합해서 total컬럼 생성
df$total<-df$com.score+df$eng.score
df
# total이 150점 이상이면 우수, 100점 이상이면 보통, 아니면 미달의
# 값이 들어가는 result컬럼을 추가
result=c()
for(x in df$total){
  result<-append(result, ifelse(x>=150,'우수', 
                                ifelse(x>=100, '보통','미달')))
}
df$result<-result
df
#최종 df의 내용과 행과 열의 개수 프린트
str(df)
dim(df)
# 최종 만들어진 df를 csv(df_csv.csv)로 저장
write.csv(df, 'df_file.csv', fileEncoding = 'utf8')
# 저장된 csv를 읽어와서 프린트
df_load = read.csv('df_file.csv', fileEncoding = 'utf8')
df_load



