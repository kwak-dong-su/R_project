basketball_train <- read.csv("C:/R-workspace/csv/basketball_train.csv")

View(basketball_train)

# 기술적 통계
dim(basketball_train)
length(basketball_train) # 컬럼의 수(열의 길이)
length(basketball_train$Player) # Player 열의 길이

# df의 전체 구조를 정리
# df의 행/열의 개수
# df의 열 이름, 타입들, 각 값들의 목록
str(basketball_train)
str(basketball_train$Player)

# df 값들의 기술적 통계량
# 최소, 최대, 평균, 분산, 4분위수
summary(basketball_train)

basketball_train$Player[1]
basketball_train$Player[1:3]

basketball_train$Pos

library(ggplot2)
# 1. Pos의 개수
length(basketball_train$Pos)
# 2. Pos의 빈도수
table(basketball_train$Pos)
# 3. Pos의 요약
summary(basketball_train$Pos)
# 4. Pos의 값이 SG인 것만 찾아보세요.
subset(basketball_train, basketball_train$Pos=='SG')
# 5. 4의 결과를 그래프로 그려보세요.
barplot(subset(basketball_train, basketball_train$Pos=='SG')$X3P)
# 6. Pos의 전체 값을 그래프로
ggplot(basketball_train, aes(x=Pos, y=Player))+geom_bin_2d()
# 7. blk가 0.3이상인 선수들만 추출
subset(basketball_train, basketball_train$BLK>=0.3)
# 8. 7번의 Pos빈도수를 그래프로
table(subset(basketball_train, basketball_train$BLK>=0.3)$Pos)

prop.table(basketball_train$BLK)

# 정렬
summary(basketball_train$X3P)
min(basketball_train$X3P)
max(basketball_train$X3P)
range(basketball_train$X3P)
sort(basketball_train$X3P)
sort(basketball_train$X3P, decreasing = TRUE)
mean(basketball_train$X3P)
median(basketball_train$X3P)
var(basketball_train$X3P)
quantile(basketball_train$X3P, 3/4)

# 정규성을 체크해보자.
# 왜도, 첨도를 이용해서 정규분포인지 확인

install.packages("moments")
library(moments)

# 왜도(치우친 정도)
skewness(basketball_train$X3P) # 중앙에 집중된 모양(아주 살짝 왼쪽)
# 첨도(뾰족한 정도)
kurtosis(basketball_train$X3P)

hist(basketball_train$X3P)

# 빈도와 비율
install.packages("Hmisc")
library(Hmisc)
describe(basketball_train$X3P)

install.packages("prettyR")
library(prettyR)
freq(basketball_train$Pos)

# MASS패키지 설치 및 Animals 데이터셋 로딩
install.packages("MASS")
library(MASS)
data(Animals)
head(Animals)

# brian 컬럼의 기술적 통계
Animals$brain
length(Animals$brain)
summary(Animals$brain)
str(Animals$brain)
quantile(Animals$brain, 3/4)

# 전체 데이터셋 기술 통계량
describe(Animals)
freq(Animals)

# descriptive.csv
descriptive <- read.csv("C:/R-workspace/csv/descriptive.csv")
head(descriptive)

# 조건 1)
barplot(table(descriptive$type)) # 막대그래프
pie(table(descriptive$pass)) # 파이그래프

# 조건 2)
describe(descriptive$age) # 요약치
skewness(descriptive$age) # 왜도 
kurtosis(descriptive$age) # 첨도
hist(descriptive$age) 
# 왼쪽으로 조금 치우쳐져 있으며, 정규분포보다 뾰족한 모양






