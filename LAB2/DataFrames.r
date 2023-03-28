df<-read.csv("Лучшие расы в скайриме.csv",sep=";",header=T,fileEncoding = "cp1251")
View(df)

#Task1
sapply(na.omit(df[, 3:12]), mean, 2) #среднее значение по каждому столбцу
sapply(na.omit(df[, 3:12]), min, 2) #минимальное значение по каждому столбцу
sapply(na.omit(df[, 3:12]), max, 2) #максимальное значение по каждому столбцу

#Task2

c3<-colSums(df[3:12]>7,na.rm = T) #кол-во людей оставивших оценку больше 7
print(c3)
c4<-colSums(df[3:12]<3,na.rm=T) #кол-во людей оставивших оценку меньше 3
print(c4)

'c1<-length(which(df$Орк>7)) #количество людей отдавших предпочтение больше чем 7 (Орк)
print(c1)
c2<-length(which(df$Орк<3)) #количество людей отдавших предпочтение меньше чем 3 (Орк)
print(c2)'''

#Task3
c3<-sapply(na.omit(df[, 3:12]), mean, 2)
c4<-c3[order(c3,decreasing = TRUE)] #сортировка по убыванию
print(c4)


#Task4
barplot(c3,xlab="Персонажи",ylab = "Средняя оценка",col="green", main="Лучшие расы скайрима")#столбчатая диаграмма
hist(c3,xlab="Диапазон",ylab = "Частота",col="green", main="Лучшие расы скайрима") #гистограмма
