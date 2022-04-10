#soal6

#a
data <- rnorm(100, 50, 8)
avg <- mean(data)
x1 <- floor(avg)
x2 <- ceiling(avg)
z_score <- (data - mean(data)/ sd(data))
plot(z_score, type = 'l', col='red')

#b
hist(data, 
     main = "5025201051_Muhammad Fath Mushaffa Azhar_Probstat_E_DNhistogram",
     breaks = 50)

#c
varian <- var(data)