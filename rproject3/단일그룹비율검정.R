# 빈도수의 차이를 검정하고 싶을 때
# 빈도수를 나타내는 표 : 교차검정표
getwd()

one_sample <- read.csv("C:/R-workspace/csv/one_sample.csv")
View(one_sample)
print(one_sample)

head(one_sample)
summary(one_sample)
length(one_sample)
length(one_sample$no)

table(one_sample$survey, useNA = 'ifany') # na값도 출력

library(prettyR)

freq(one_sample$survey)
# Frequencies for one_sample$survey 
# 1    0   NA
# 136   14    0
# %    90.7  9.3    0 
# %!NA 90.7  9.3

# 이항분포를 가지는 베르누이 시행 결과인 교차분석표를
# table(), freq() 함수로 구함
# 이항분포는 명목척도(질적데이터)
help("binom.test")

binom.test(c(136,14), p=0.8, alternative = 'greater', conf.level = 0.95)
# 표본 만족136 불만족14, 
# 모집단이 80%보다 greater(이상)인지, 신뢰구간 0.95

# data:  c(136, 14)
# number of successes = 136, number of trials = 150,
# p-value = 0.0003179
# alternative hypothesis: true probability of success is greater than 0.8
# 95 percent confidence interval:
#   0.8579426 1.0000000
# sample estimates:
#   probability of success 
# 0.9066667

# p-value는 영가설이 나타날 확률(0.0003179)이 0.05보다
# 작은 확률이므로, 내가 주장한 80%이상의 만족도가 나타날 확률이
# 95%이상 된다라는 것
# 85~100만족도가 나오면 내가 맞다라는 결론
# => 만족도가 80%가 나왔으므로, 작년보다 만족도가 높고, 불만족도가
# 낮아졌다



# hdtv 문제풀이
hdtv <- read.csv("C:/R-workspace/csv/hdtv.csv")
print(hdtv)
# 기존 구매율이 15%
# 우리의 판매정보의 데이터가 기존 구매율 15%와 차이가 있는지?
# 우리의 판매정보의 데이터가 기존 구매율 15%보다 큰건지?
freq(hdtv$buy)
binom.test(c(10,40), p=0.15, conf.level = 0.95) 
#구매율이 15%일 확률 계산
# p-value가 0.05보다 아래로 나와야 함.

# 영가설은 15%가 아니고 적거나 크다.
# p-value가 0.05보다 크게 나오면 영가설 채택

# p-value=0.321 -> 0.05보다 크므로 영가설 채택
# 기존 구매율 15%와 다르다.(크거나 작다.)

binom.test(c(10,40), p=0.15, alternative = 'greater', conf.level = 0.95)
# 15%보다 클 확률 
# p-value=0.2089이므로 15%보다 더 작음. 영가설 채택

binom.test(c(10,40), p=0.1, alternative = 'greater', conf.level = 0.95)
# 10%보다 클 확률
# p-value=0.02454이므로 10%보다 더 큼. 대립가설 채택

binom.test(c(10,40), p=0.15, alternative = 'less', conf.level = 0.95)
# 15%보다 작을 확률

# 11%보다는 구매율이 크다.
# 현재 구매율은 11%~15% 사이
# 현재 구매율이 기존 구매율 15%보다는 낮다.
# 이항분포(구매, 비구매)를 따르는 베르누이 시행
# 결과 "단일그룹 비율" 검정함(명목 데이터)

