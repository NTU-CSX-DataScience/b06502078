library(dplyr)

#匯入資料
tat <- read.csv('C:/Users/admin/Downloads/titanic.csv', header=T)
View(tat)

#整理資料
table(tat$class)
cus <- tat[tat$class %in% c(1,2,3),]
work <- tat[!tat$class %in% c(1,2,3),]
boa <- tat[tat$boat %in% c(1:16,"A","B","C","D"),]

table(boa$survival,boa$boat)
View(work)
View(boa)

#試dplyr
tat[ tat$survival ==  1 & tat$class == 1 & tat$fare>31] #dplyr好像不能用 先用其他替代
tat[]



