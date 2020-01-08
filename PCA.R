#Report processing

# tidy_Doc #source
# economic_wrds #factor

rp1 <- tidy_Doc[tidy_Doc$id=="rp1.txt", "text"]
rp2 <- tidy_Doc[tidy_Doc$id=="rp2.txt", "text"]
rp3 <- tidy_Doc[tidy_Doc$id=="rp3.txt", "text"]
rp4 <- tidy_Doc[tidy_Doc$id=="rp4.txt", "text"]
rp5 <- tidy_Doc[tidy_Doc$id=="rp5.txt", "text"]
rp6 <- tidy_Doc[tidy_Doc$id=="rp6.txt", "text"]
rp7 <- tidy_Doc[tidy_Doc$id=="rp7.txt", "text"]
rp8 <- tidy_Doc[tidy_Doc$id=="rp8.txt", "text"]
rp9 <- tidy_Doc[tidy_Doc$id=="rp9.txt", "text"]
rp10 <- tidy_Doc[tidy_Doc$id=="rp10.txt", "text"]
rp11 <- tidy_Doc[tidy_Doc$id=="rp11.txt", "text"]
rp12 <- tidy_Doc[tidy_Doc$id=="rp12.txt", "text"]
rp13 <- tidy_Doc[tidy_Doc$id=="rp13.txt", "text"]
rp14 <- tidy_Doc[tidy_Doc$id=="rp14.txt", "text"]
rp15 <- tidy_Doc[tidy_Doc$id=="rp15.txt", "text"]
rp16 <- tidy_Doc[tidy_Doc$id=="rp16.txt", "text"]
rp17 <- tidy_Doc[tidy_Doc$id=="rp17.txt", "text"]
rp18 <- tidy_Doc[tidy_Doc$id=="rp18.txt", "text"]
rp19 <- tidy_Doc[tidy_Doc$id=="rp19.txt", "text"]
rp20 <- tidy_Doc[tidy_Doc$id=="rp20.txt", "text"]


res_rp1 <- rp1 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp2 <- rp2 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp3 <- rp3 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp4 <- rp4 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp5 <- rp5 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp6 <- rp6 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp7 <- rp7 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp8 <- rp8 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp9 <- rp9 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp10 <- rp10 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)


res_rp11 <- rp11 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp12 <- rp12 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp13 <- rp13 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp14 <- rp14 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp15 <- rp15 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp16 <- rp16 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp17 <- rp17 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp18 <- rp18 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp19 <- rp19 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)

res_rp20 <- rp20 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)





n <- rp1 %>%
  unnest_tokens(word, text) %>%
  count(row(rp1))
res_rp1$nperwrd <- res_rp1$n / n$n 

n <- rp2 %>%
  unnest_tokens(word, text) %>%
  count(row(rp2))
res_rp2$nperwrd <- res_rp2$n / n$n 

n <- rp3 %>%
  unnest_tokens(word, text) %>%
  count(row(rp3))
res_rp3$nperwrd <- res_rp3$n / n$n 

n <- rp4 %>%
  unnest_tokens(word, text) %>%
  count(row(rp4))
res_rp4$nperwrd <- res_rp4$n / n$n 

n <- rp5 %>%
  unnest_tokens(word, text) %>%
  count(row(rp5))
res_rp5$nperwrd <- res_rp5$n / n$n 

n <- rp6 %>%
  unnest_tokens(word, text) %>%
  count(row(rp6))
res_rp6$nperwrd <- res_rp6$n / n$n 

n <- rp7 %>%
  unnest_tokens(word, text) %>%
  count(row(rp7))
res_rp7$nperwrd <- res_rp7$n / n$n 

n <- rp8 %>%
  unnest_tokens(word, text) %>%
  count(row(rp8))
res_rp8$nperwrd <- res_rp8$n / n$n 

n <- rp9 %>%
  unnest_tokens(word, text) %>%
  count(row(rp9))
res_rp9$nperwrd <- res_rp9$n / n$n 

n <- rp10 %>%
  unnest_tokens(word, text) %>%
  count(row(rp10))
res_rp10$nperwrd <- res_rp10$n / n$n 

n <- rp11 %>%
  unnest_tokens(word, text) %>%
  count(row(rp11))
res_rp11$nperwrd <- res_rp11$n / n$n 

n <- rp12 %>%
  unnest_tokens(word, text) %>%
  count(row(rp12))
res_rp12$nperwrd <- res_rp12$n / n$n 

n <- rp13 %>%
  unnest_tokens(word, text) %>%
  count(row(rp13))
res_rp13$nperwrd <- res_rp13$n / n$n 

n <- rp14 %>%
  unnest_tokens(word, text) %>%
  count(row(rp14))
res_rp14$nperwrd <- res_rp14$n / n$n 

n <- rp15 %>%
  unnest_tokens(word, text) %>%
  count(row(rp15))
res_rp15$nperwrd <- res_rp15$n / n$n 

n <- rp16 %>%
  unnest_tokens(word, text) %>%
  count(row(rp16))
res_rp16$nperwrd <- res_rp16$n / n$n 

n <- rp17 %>%
  unnest_tokens(word, text) %>%
  count(row(rp17))
res_rp17$nperwrd <- res_rp17$n / n$n 

n <- rp18 %>%
  unnest_tokens(word, text) %>%
  count(row(rp18))
res_rp18$nperwrd <- res_rp18$n / n$n 

n <- rp19 %>%
  unnest_tokens(word, text) %>%
  count(row(rp19))
res_rp19$nperwrd <- res_rp19$n / n$n 

n <- rp20 %>%
  unnest_tokens(word, text) %>%
  count(row(rp20))
res_rp20$nperwrd <- res_rp20$n / n$n 




write.csv(res_rp1, "datafiles/csvs/res_rp1.csv")
write.csv(res_rp2, "datafiles/csvs/res_rp2.csv")
write.csv(res_rp3, "datafiles/csvs/res_rp3.csv")
write.csv(res_rp4, "datafiles/csvs/res_rp4.csv")
write.csv(res_rp5, "datafiles/csvs/res_rp5.csv")
write.csv(res_rp6, "datafiles/csvs/res_rp6.csv")
write.csv(res_rp7, "datafiles/csvs/res_rp7.csv")
write.csv(res_rp8, "datafiles/csvs/res_rp8.csv")
write.csv(res_rp9, "datafiles/csvs/res_rp9.csv")
write.csv(res_rp10, "datafiles/csvs/res_rp10.csv")
write.csv(res_rp11, "datafiles/csvs/res_rp11.csv")
write.csv(res_rp12, "datafiles/csvs/res_rp12.csv")
write.csv(res_rp13, "datafiles/csvs/res_rp13.csv")
write.csv(res_rp14, "datafiles/csvs/res_rp14.csv")
write.csv(res_rp15, "datafiles/csvs/res_rp15.csv")
write.csv(res_rp16, "datafiles/csvs/res_rp16.csv")
write.csv(res_rp17, "datafiles/csvs/res_rp17.csv")
write.csv(res_rp18, "datafiles/csvs/res_rp18.csv")
write.csv(res_rp19, "datafiles/csvs/res_rp19.csv")
write.csv(res_rp20, "datafiles/csvs/res_rp20.csv")

