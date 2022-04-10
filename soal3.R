#soal3

#a
dpois(6, 4.5)

#b
set.seed(2)

babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Number of babies born per period',
       y = 'Proportion',
       title = '365 simulated births in a hospital with Pois(lambda = 4.5)') +
  theme_bw()

#c
babies %>% dplyr::summarize(six_babies = sum(babies$data == 6) / n())
#pada soal a adalah nilai exactnya, sedangkan soal b itu adalah nilai simulasi
#yang memiliki hasil 11.50% hampir mendekati dengan nilai exact yaitu 12.81%

#d
rataan <- 4.5
varian <- 4.5