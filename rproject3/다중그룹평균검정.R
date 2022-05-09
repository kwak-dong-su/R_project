two_sample <- read.csv("C:/R-workspace/csv/two_sample.csv")
head(two_sample)

two_sample$method
summary(two_sample)

result <- subset(two_sample, !is.na(score), c(method, score))
head(result)

length(result$score)

a <- subset(result, method==1)
b <- subset(result, method==2)

a.score<-a$score
b.score<-b$score

length(a.score)

# 독립적인 a, b집단의 동질성을 비교
var.test(a.score, b.score)
# -> 0.05 이상이므로 정규 분포를 따른다. (t-test 사용)

# a와 b집단 점수에 차이가 있는가?(같지 않은가)
t.test(a.score, b.score, alternative = 'two.side', conf.level = 0.95)
# 0.0411이므로 대립가설 채택, 차이가 있다.

# a의 점수가 더 큰가?
t.test(a.score, b.score, alternative = 'greater', conf.level = 0.95)
# 영가설 채택, a가 b보다 작다.



# ppt 47p 문제
twomethod <- read.csv("C:/R-workspace/csv/twomethod.csv")
head(twomethod)

# 결측치 제거
result2<-subset(twomethod, !is.na(score), c(method, score))
length(result2$score)

# 그룹별별 subset
a2 <- subset(result2, method==1)
b2 <- subset(result2, method==2)

# 그룹별 점수
a2.score<-a2$score
b2.score<-b2$score

# 그룹별 길이
length(a2.score)
length(b2.score)

# 동질성 비교
var.test(a2.score, b2.score)

# p-value > 0.05이므로 t-test 사용
# a2와 b2집단 점수에 차이가 있는가?(같지 않은가)
t.test(a2.score, b2.score, alternative = 'two.side', conf.level = 0.95)
# p-value < 0.05이므로 대립가설 채택, 차이가 있다.

# a2의 점수가 더 큰가?
t.test(a2.score, b2.score, alternative = 'greater', conf.level = 0.95)
# p-value > 0.05이므로 영가설 채택, a가 b보다 작다.
