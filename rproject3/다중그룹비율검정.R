two_sample <- read.csv("C:/R-workspace/csv/two_sample.csv")
print(two_sample)

length(two_sample$gender)
length(two_sample$score)
table(two_sample$gender)
table(two_sample$survey) #만족 245
table(two_sample$score, useNA = 'ifany')

freq(two_sample$survey)


# 그룹별 빈도분석표(두 그룹의 만족도)
table(two_sample$method, two_sample$survey, useNA = 'ifany')

# 어느 그룹이 만족도가 더 높았는가
prop.test(c(110,135), c(150,150), alternative = 'greater', conf.level = 0.95)
# p-value=0.9998이므로 영가설(후자가 더 크거나 같음) 채택

prop.test(c(110,135), c(150,150), alternative = 'less', conf.level = 0.95)
# 대립가설(전자가 더 작음) 채택




table(two_sample$gender, two_sample$survey, useNA = 'ifany')
# 남녀 그룹간 만족도 비교
table(subset(two_sample, gender==1)$survey) #남자 만족 빈도수
table(subset(two_sample, gender==2)$survey) #여자 만족 빈도수

# 남자 그룹의 만족도가 더 높았는지
prop.test(c(138,107), c(174,126), alternative = 'greater', conf.level = 0.95)
# p-value=0.8618이므로 영가설(여자 그룹의 만족도가 높거나 같음) 채택

# 남자 그룹의 만족도가 더 낮은지
prop.test(c(138,107), c(174,126), alternative = 'less', conf.level = 0.95)
# p-value=0.1382이므로 대립가설(남자 그룹의 만족도가 낮음) 채택

prop.test(c(138,107), c(174,126), conf.level = 0.95)


