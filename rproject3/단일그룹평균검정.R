# 연속형 데이터 수치 비교 방법
# 비율척도(나이, 몸무게, 키)

korea.com.time=5.2
one_sample <- read.csv("C:/R-workspace/csv/one_sample.csv")

print(one_sample$time)

mean(one_sample$time, na.rm = TRUE) # NA를 제외한 평균

na.omit(one_sample$time) # NA를 포함한 row를 제거

# 1.정규성 검증
shapiro.test(na.omit(one_sample$time))
# p-value가 0.05이상 나오면 정규분포
# 0.7242이므로 정규분포를 따른다.(모수검정(t-test))

# 2.t-test 검증
t.test(na.omit(one_sample$time), 
       mu=korea.com.time, alternative ='two.side', conf.level = 0.95)
# 대립(연구)가설 : A회사의 노트북 사용시간과 
#                  한국의 노트북 사용시간은 차이가 있다
# 귀무(영)가설 : 사용시간의 차이가 없다.
# 대립가설 채택 : 차이가 있다
# 5.377613~5.736148 -> 구간 추정
# 5.556881 -> 점추정


# 한국의 노트북 평균 사용시간 보다 A회사의 노트북 평균 사용시간이 더 큰가?
# t-test 검증해보세요.
t.test(na.omit(one_sample$time), 
       mu=korea.com.time, alternative ='greater', conf.level = 0.95)
# e-05 -> 0.0000...
# p-value가 0.05 미만이므로 대립가설 채택




# ppt 39p 문제
total.mean.height=148.5

student_height <- read.csv("C:/R-workspace/csv/student_height.csv")
head(student_height)

# 표본평균 
mean(student_height$height)

# 정규성 검증, p-value가 0.05 미만이므로 정규성을 따르지 않음
shapiro.test(student_height$height) 

# wilcox.test 비모수 검정
wilcox.test(student_height$height, mu=total.mean.height,
       alternative = 'two.side', conf.level = 0.95)

# p-value가 0.067이므로 귀무가설 채택(차이가 없다)



