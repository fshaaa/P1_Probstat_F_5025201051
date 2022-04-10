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
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = 0.2)) %>%
  mutate(Failures = ifelse(x == 3, 3, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability")

#e
rataan <- 1/0.2 #1/p
varian <- (1-0.2)/(0.2*0.2) #1-p/p^2