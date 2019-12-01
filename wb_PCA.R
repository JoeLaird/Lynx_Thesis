#Web sites
#PCA

source("Code/web_sources.R")

res_w1 <- w1 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w1$nperwrd <- res_w1$n / nrow(w1)

 
res_w2 <- w2 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w2$nperwrd <- res_w2$n / nrow(w2)


res_w3 <- w3 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w3$nperwrd <- res_w3$n / nrow(w3)


res_w4 <- w4 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w4$nperwrd <- res_w4$n / nrow(w4)


res_w5 <- w5 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w5$nperwrd <- res_w5$n / nrow(w5)


res_w6 <- w6 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w6$nperwrd <- res_w6$n / nrow(w6)


res_w7 <- w7 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w7$nperwrd <- res_w7$n / nrow(w7)


res_w8 <- w8 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w8$nperwrd <- res_w8$n / nrow(w8)


res_w9 <- w9 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w9$nperwrd <- res_w9$n / nrow(w9)


res_w10 <- w10 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w10$nperwrd <- res_w10$n / nrow(w10)

res_w11 <- w11 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w11$nperwrd <- res_w11$n / nrow(w11)


res_w12 <- w12 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w12$nperwrd <- res_w12$n / nrow(w12)


res_w13 <- w13 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w13$nperwrd <- res_w13$n / nrow(w13)


res_w15 <- w15 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w15$nperwrd <- res_w15$n / nrow(w15)


res_w14 <- w14 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w14$nperwrd <- res_w14$n / nrow(w14)


res_w16 <- w16 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w16$nperwrd <- res_w16$n / nrow(w16)


res_w17 <- w17 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w17$nperwrd <- res_w17$n / nrow(w17)


res_w18 <- w18 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w18$nperwrd <- res_w18$n / nrow(w18)


res_w19 <- w19 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w19$nperwrd <- res_w19$n / nrow(w19)


res_w20 <- w20 %>% inner_join(economic_wrds) %>%
  count(word, sort = T)
res_w20$nperwrd <- res_w20$n / nrow(w20)



write.csv(res_w1, "Datafiles/csvs/res_w1.csv")
write.csv(res_w2, "Datafiles/csvs/res_w2.csv")
write.csv(res_w3, "Datafiles/csvs/res_w3.csv")
write.csv(res_w4, "Datafiles/csvs/res_w4.csv")
write.csv(res_w5, "Datafiles/csvs/res_w5.csv")
write.csv(res_w6, "Datafiles/csvs/res_w6.csv")
write.csv(res_w7, "Datafiles/csvs/res_w7.csv")
write.csv(res_w8, "Datafiles/csvs/res_w8.csv")
write.csv(res_w9, "Datafiles/csvs/res_w9.csv")
write.csv(res_w10, "Datafiles/csvs/res_w10.csv")
write.csv(res_w11, "Datafiles/csvs/res_w11.csv")
write.csv(res_w12, "Datafiles/csvs/res_w12.csv")
write.csv(res_w13, "Datafiles/csvs/res_w13.csv")
write.csv(res_w14, "Datafiles/csvs/res_w14.csv")
write.csv(res_w15, "Datafiles/csvs/res_w15.csv")
write.csv(res_w16, "Datafiles/csvs/res_w16.csv")
write.csv(res_w17, "Datafiles/csvs/res_w17.csv")
write.csv(res_w18, "Datafiles/csvs/res_w18.csv")
write.csv(res_w19, "Datafiles/csvs/res_w19.csv")
write.csv(res_w20, "Datafiles/csvs/res_w20.csv")

