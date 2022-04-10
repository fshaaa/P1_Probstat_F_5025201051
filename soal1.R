#soal1

#a
dgeom(3, 0.2)

#b
mean(rgeom(10000, 0.2) == 3)

#c
#soal a itu adalah nilai exactnya, sedangkan soal b itu adalah nilai percobaan
#ketika diambil 10000 nilai random yang hasil mean == 3, ternyata hasilnya 
#ternyata hasilnya untuk nilai b hampir mendekati nilai exact

#d

#e
mean <- 1/0.2
var <- (1-0.2)/(0.2*0.2)