#soal5

#a
rexp(10, 3)

#b
#n = 10
set.seed(1)
x1 <- rexp(10, 3)
hist(x1)

#n = 100
set.seed(1)
x2 <- rexp(100, 3)
hist(x2)

#n = 1000
set.seed(1)
x3 <- rexp(1000, 3)
hist(x3)

#n = 10000
set.seed(1)
x4 <- rexp(10000, 3)
hist(x4)

#c
set.seed(1)
rataan <- mean(rexp(100, 3))
varian <- var(rexp(100, 3))