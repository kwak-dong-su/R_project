library(haven)
library(readr)

HNIR62FL_data_2 <- read_sav("2018 국민여행조사_국내여행.sav")
getwd() # this is the folder it will save into unless you specify otherwise in the path below
write_csv(x=HNIR62FL_data_2, path="2018 국민여행조사_국내여행.csv")

HNIR62FL_data_2 <- read_sav("(원자료) 2019년 국민여행조사_국내여행.sav")
getwd() # this is the folder it will save into unless you specify otherwise in the path below
write_csv(x=HNIR62FL_data_2, path="(원자료) 2019 국민여행조사_국내여행.csv")


HNIR62FL_data_2 <- read_sav("2017/2017년 국민여행 실태조사_데이터_방문지.sav")
write_csv(x=HNIR62FL_data_2, path="2017/2017년 국민여행 실태조사_데이터_방문지.csv")
