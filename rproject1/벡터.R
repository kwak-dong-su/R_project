name.list=c('hong', 'kim', 'song')

print(name.list)

age.list=c(100, 200, 50)
print(age.list)

weight.list=100:200

print(weight.list)

print(weight.list[1])
print(weight.list[c(1,3,5)])

# 전체 index의 시작~끝 번호 확인
#  첫번째 값, 마지막 값의 차이를 구해보세요
run.list=c(9, 11:15, 25, 30:33)
print(run.list)
print(run.list[11]-run.list[1])
cat(mean(age.list), mean(weight.list), mean(run.list))


#######
term.1=c(90,100,80,75)
names(term.1) =c('국어', '영어', '수학', '컴퓨터')
print(term.1)
print(term.1['국어'])

#######
#국어점수 99점
#수학점수 88점
#변경해서 프린트
term.1['국어']<-99
term.1['수학']<-88
print(term.1)

#영어, 컴퓨터를 한꺼번에 변경
term.1[c('영어', '컴퓨터')]<-c(90, 80)
print(term.1)