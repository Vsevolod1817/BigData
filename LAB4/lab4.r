#2
df<-read.csv("Результаты Великобритания теннис.csv", sep=";", header=T, fileEncoding="cp1251")
View(df)

barplot(df[,5],names.arg = df[,1] ,main = "Диаграмма результатов",horiz = F,las = 2, xlab = "Годы", ylab = "кол-во медалей",col = "green")
pie(df[,5], df[,1],main = "Количество первых мест")
plot(df[,1],df[,6],type = "o",xlab = "Годы", ylab = "кол-во медалей",main = "Мужские призовые места")
plot(df[,1],df[,7],type = "o",xlab = "Годы", ylab = "кол-во медалей",main = "Женские призовые места")

#3
df<-read.csv("3.csv", sep=";", header=T, fileEncoding="cp1251")
View(df)
x = as.integer(df[,1])
y = seq(from = 0, to = 60,length.out = 6)
#3.1
y1 = df[,2]
y2 = df[,6]
y3 = df[,10]
y4 = df[,14]
y5 = df[,18]
y6 = df[,22]
y7= df[,26]

plot(x,y,pch =0 ,col ="white", main = "Изменения спортивных достижений по золотым медалям", xlab = "Год", ylab = "Кол-во медалей" )
lines(x,y1,type = "b",pch=20, col = "red")
lines(x,y2,type = "b",pch=21, col = "blue")
lines(x,y3,type = "b",pch=22, col = "green")
lines(x,y4,type = "b",pch=23, col = "yellow")
lines(x,y5,type = "b",pch=24, col = "brown")
lines(x,y6,type = "b",pch=25, col = "pink")
lines(x,y7,type="b",pch=25, col = "black")

legend("topright", inset = c(0, 0), legend = c("Россия","США","Китай","Япония","Великобритания","Австралия", "Нидерланды"), lwd = 2,pch = c(20,21,22,23,24,25,25), col = c("red", "blue","green","yellow","brown","pink", "black"))

#3.2
y1 = df[,3]
y2 = df[,7]
y3 = df[,11]
y4 = df[,15]
y5 = df[,19]
y6 = df[,23]
y7= df[,27]

plot(x,y,pch =0 ,col ="white", main = "Изменения спортивных достижений по 3-м местам", xlab = "Год", ylab = "Кол-во медалей")
lines(x,y1,type = "b",pch=20, col = "red")
lines(x,y2,type = "b",pch=21, col = "blue")
lines(x,y3,type = "b",pch=22, col = "green")
lines(x,y4,type = "b",pch=23, col = "yellow")
lines(x,y5,type = "b",pch=24, col = "brown")
lines(x,y6,type = "b",pch=25, col = "pink")
lines(x,y7,type = "b",pch=25, col = "black")

legend("topright",inset = c(0, 0), legend = c("Россия", "США","Китай","Япония","Великобритания","Австралия", "Нидерланды"), lwd = 2,pch = c(20,21,22,23,24,25,25), col = c("red", "blue","green","yellow","brown","pink","black"))

#3.3
y1 = df[,4]
y2 = df[,8]
y3 = df[,12]
y4 = df[,16]
y5 = df[,20]
y6 = df[,24]
y7=df[,28]

plot(x,y,pch =0 ,col ="white", main = "Изменения спортивных достижений по 7-м местам", xlab = "Год", ylab = "Кол-во медалей" )
lines(x,y1,type = "b",pch=20, col = "red")
lines(x,y2,type = "b",pch=21, col = "blue")
lines(x,y3,type = "b",pch=22, col = "green")
lines(x,y4,type = "b",pch=23, col = "yellow")
lines(x,y5,type = "b",pch=24, col = "brown")
lines(x,y6,type = "b",pch=25, col = "pink")
lines(x,y7,type = "b",pch=25, col = "black")

legend("topright",inset = c(0, 0), legend = c("Россия", "США","Китай","Япония","Великобритания","Австралия", "Нидерланды"), lwd = 2,pch = c(20,21,22,23,24,25,25), col = c("red", "blue","green","yellow","brown","pink","black"))
#4

df<-read.csv("4.csv", sep=";", header=T, fileEncoding="cp1251")
View(df)

layout(matrix(c(1,1,2,2), 2, byrow = TRUE))
#Диаграмма
barplot(df[,2],names.arg = df[,1] ,main = "Мужские результаты",horiz = F,las = 2, xlab = "Годы", ylab = "кол-во медалей",col = "green")
barplot(df[,3],names.arg = df[,1] ,main = "Женские результаты",horiz = F,las = 2, xlab = "Годы", ylab = "кол-во медалей",col = "violet")
#Пай
pie (df[,2],df[,1],main = "Мужские результаты")
pie (df[,3],df[,1],main = "Женские результаты")
#Функция
plot(df[,1],df[,2],type = "o",xlab = "Годы", ylab = "кол-во медалей",main = "Мужские призовые места")
plot(df[,1],df[,3],type = "o",xlab = "Годы", ylab = "кол-во медалей",main = "Женские призовые места")
#Аккумулирование результатов
x = as.integer(df[,1])
y = seq(from = 1, to = 10,length.out = 6)
y1 = df[,2]
y2 = df[,3]
layout(matrix(c(1,1,2,2), 2,1, byrow = TRUE))

plot(x,y,pch =0 ,col ="white", main = "Результаты олимпиады по теннису", xlab = "Год", ylab = "Кол-во медалей" )
lines(x,y1,type = "b",pch=20, col = "green")
lines(x,y2,type = "b",pch=21, col = "violet")

legend("topright",inset = c(0, 0), legend = c("M","Ж"), lwd = 2,pch = c(20,21), col = c("green", "violet"))
