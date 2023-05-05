df<-read.csv("Лучшие расы в скайриме.csv",sep=";",header=T,fileEncoding = "cp1251")
View(df)

#Дискриптивный анализ
#1 Среднее
mean_df = mean(df[,3], na.rm=T)
mean_df

#2 Медиана
median = median(df[,3], na.rm=T)
median

#3 Диапазон
r = range(df[,4], na.rm=T)
r

#4 Дисперсия
varian = var(df[,4], na.rm=T)
varian

#5 Стандартное отклонение
std = sd(df[,4], na.rm=T)
std

#5 Квартили
quart = quantile(df[,4], na.rm=T)
quart
c1 = colSums(df[3:12]>7,na.rm = T)
print(c1)

# сортировка по среднему значению
c3<-sapply(na.omit(df[, 3:12]), mean, 2)
c4<-c3[order(c3,decreasing = TRUE)] #сортировка по убыванию
print(c4)

#Гистограмма
hist(c1,main = "Распределение людей, отдавших бал больше 7",xlab="Интервал", ylab="Частота")

#Сглаженная гистограмма
plot(density(c1), main = "Распределение людей, отдавших бал больше 7")

'
table(cut(res,breaks=20))'''

#боксплот
'''medians = apply(df[3:12], 2, FUN = median, na.rm=T)'''
boxplot(c1,las=2)
