source("code/merge_tweets.R")

res_2014_01 <- tw_2014_01 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_01 <- tw_2014_01 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_01)
res_2014_01$nperwrd <- res_2014_01$n / n

res_2014_02 <- tw_2014_02 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_02 <- tw_2014_02 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_02)
res_2014_02$nperwrd <- res_2014_02$n / n

res_2014_03 <- tw_2014_03 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_03 <- tw_2014_03 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_03)
res_2014_03$nperwrd <- res_2014_03$n / n

res_2014_04 <- tw_2014_04 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_04 <- tw_2014_04 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_04)
res_2014_04$nperwrd <- res_2014_04$n / n

res_2014_05 <- tw_2014_05 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_05 <- tw_2014_05 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_05)
res_2014_05$nperwrd <- res_2014_05$n / n

res_2014_06 <- tw_2014_06 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_06 <- tw_2014_06 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_06)
res_2014_06$nperwrd <- res_2014_06$n / n

res_2014_07 <- tw_2014_07 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_07 <- tw_2014_07 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_07)
res_2014_07$nperwrd <- res_2014_07$n / n

res_2014_08 <- tw_2014_08 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_08 <- tw_2014_08 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_08)
res_2014_08$nperwrd <- res_2014_08$n / n

res_2014_09 <- tw_2014_09 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_09 <- tw_2014_09 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_09)
res_2014_09$nperwrd <- res_2014_09$n / n


res_2014_10 <- tw_2014_10 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_10 <- tw_2014_10 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_10)
res_2014_10$nperwrd <- res_2014_10$n / n

res_2014_11 <- tw_2014_11 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_11 <- tw_2014_11 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_11)
res_2014_11$nperwrd <- res_2014_11$n / n

res_2014_12 <- tw_2014_12 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2014_12 <- tw_2014_12 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2014_12)
res_2014_12$nperwrd <- res_2014_12$n / n

res_2015_01 <- tw_2015_01 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_01 <- tw_2015_01 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_01)
res_2015_01$nperwrd <- res_2015_01$n / n

res_2015_02 <- tw_2015_02 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_02 <- tw_2015_02 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_02)
res_2015_02$nperwrd <- res_2015_02$n / n

res_2015_03 <- tw_2015_03 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_03 <- tw_2015_03 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_03)
res_2015_03$nperwrd <- res_2015_03$n / n

res_2015_04 <- tw_2015_04 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_04 <- tw_2015_04 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_04)
res_2015_04$nperwrd <- res_2015_04$n / n

res_2015_05 <- tw_2015_05 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_05 <- tw_2015_05 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_05)
res_2015_05$nperwrd <- res_2015_05$n / n

res_2015_06 <- tw_2015_06 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_06 <- tw_2015_06 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_06)
res_2015_06$nperwrd <- res_2015_06$n / n


res_2015_07 <- tw_2015_07 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_07 <- tw_2015_07 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_07)
res_2015_07$nperwrd <- res_2015_07$n / n

res_2015_08 <- tw_2015_08 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_08 <- tw_2015_08 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_08)
res_2015_08$nperwrd <- res_2015_08$n / n

res_2015_09 <- tw_2015_09 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_09 <- tw_2015_09 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_09)
res_2015_09$nperwrd <- res_2015_09$n / n

res_2015_10 <- tw_2015_10 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_10 <- tw_2015_10 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_10)
res_2015_10$nperwrd <- res_2015_10$n / n

res_2015_11 <- tw_2015_11 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_11 <- tw_2015_11 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_11)
res_2015_11$nperwrd <- res_2015_11$n / n

res_2015_12 <- tw_2015_12 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2015_12 <- tw_2015_12 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2015_12)
res_2015_12$nperwrd <- res_2015_12$n / n

res_2016_01 <- tw_2016_01 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_01 <- tw_2016_01 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2016_01)
res_2016_01$nperwrd <- res_2016_01$n / n


res_2016_02 <- tw_2016_02 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_02 <- tw_2016_02 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2016_02)
res_2016_02$nperwrd <- res_2016_02$n / n

res_2016_03 <- tw_2016_03 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_03 <- tw_2016_03 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2016_03)
res_2016_03$nperwrd <- res_2016_03$n / n

res_2016_04 <- tw_2016_04 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_04 <- tw_2016_04 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2016_04)
res_2016_04$nperwrd <- res_2016_04$n / n

res_2016_05 <- tw_2016_05 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_05 <- tw_2016_05 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2016_05)
res_2016_05$nperwrd <- res_2016_05$n / n

res_2016_06 <- tw_2016_06 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_06 <- tw_2016_06 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2016_06)
res_2016_06$nperwrd <- res_2016_06$n / n

res_2016_07 <- tw_2016_07 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_07 <- tw_2016_07 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2016_07)
res_2016_07$nperwrd <- res_2016_07$n / n

res_2016_08 <- tw_2016_08 %>%
  unnest_tokens(word, V1) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_08 <- tw_2016_08 %>%
  unnest_tokens(word, V1)
n <- nrow(tw_2016_08)
res_2016_08$nperwrd <- res_2016_08$n / n

res_2016_09 <- tw_2016_09 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_09 <- tw_2016_09 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2016_09)
res_2016_09$nperwrd <- res_2016_09$n / n

res_2016_10 <- tw_2016_10 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_10 <- tw_2016_10 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2016_10)
res_2016_10$nperwrd <- res_2016_10$n / n

res_2016_11 <- tw_2016_11 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_11 <- tw_2016_11 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2016_11)
res_2016_11$nperwrd <- res_2016_11$n / n

res_2016_12 <- tw_2016_12 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2016_12 <- tw_2016_12 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2016_12)
res_2016_12$nperwrd <- res_2016_12$n / n

res_2017_01 <- tw_2017_01 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_01 <- tw_2017_01 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_01)
res_2017_01$nperwrd <- res_2017_01$n / n

res_2017_02 <- tw_2017_02 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_02 <- tw_2017_02 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_02)
res_2017_02$nperwrd <- res_2017_02$n / n

res_2017_03 <- tw_2017_03 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_03 <- tw_2017_03 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_03)
res_2017_03$nperwrd <- res_2017_03$n / n

res_2017_04 <- tw_2017_04 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_04 <- tw_2017_04 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_04)
res_2017_04$nperwrd <- res_2017_04$n / n

res_2017_05 <- tw_2017_05 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_05 <- tw_2017_05 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_05)
res_2017_05$nperwrd <- res_2017_05$n / n

res_2017_06 <- tw_2017_06 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_06 <- tw_2017_06 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_06)
res_2017_06$nperwrd <- res_2017_06$n / n

res_2017_07 <- tw_2017_07 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_07 <- tw_2017_07 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_07)
res_2017_07$nperwrd <- res_2017_07$n / n

res_2017_08 <- tw_2017_08 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_08 <- tw_2017_08 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_08)
res_2017_08$nperwrd <- res_2017_08$n / n

res_2017_09 <- tw_2017_09 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_09 <- tw_2017_09 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_09)
res_2017_09$nperwrd <- res_2017_09$n / n

res_2017_10 <- tw_2017_10 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_10 <- tw_2017_10 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_10)
res_2017_10$nperwrd <- res_2017_10$n / n

res_2017_11 <- tw_2017_11 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_11 <- tw_2017_11 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_11)
res_2017_11$nperwrd <- res_2017_11$n / n

res_2017_12 <- tw_2017_12 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2017_12 <- tw_2017_12 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2017_12)
res_2017_12$nperwrd <- res_2017_12$n / n

res_2018_01 <- tw_2018_01 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_01 <- tw_2018_01 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_01)
res_2018_01$nperwrd <- res_2018_01$n / n

res_2018_02 <- tw_2018_02 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_02 <- tw_2018_02 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_02)
res_2018_02$nperwrd <- res_2018_02$n / n

res_2018_03 <- tw_2018_03 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_03 <- tw_2018_03 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_03)
res_2018_03$nperwrd <- res_2018_03$n / n

res_2018_04 <- tw_2018_04 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_04 <- tw_2018_04 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_04)
res_2018_04$nperwrd <- res_2018_04$n / n

res_2018_05 <- tw_2018_05 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_05 <- tw_2018_05 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_05)
res_2018_05$nperwrd <- res_2018_05$n / n

res_2018_06 <- tw_2018_06 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_06 <- tw_2018_06 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_06)
res_2018_06$nperwrd <- res_2018_06$n / n

res_2018_07 <- tw_2018_07 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_07 <- tw_2018_07 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_07)
res_2018_07$nperwrd <- res_2018_07$n / n

res_2018_08 <- tw_2018_08 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_08 <- tw_2018_08 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_08)
res_2018_08$nperwrd <- res_2018_08$n / n

res_2018_09 <- tw_2018_09 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_09 <- tw_2018_09 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_09)
res_2018_09$nperwrd <- res_2018_09$n / n

res_2018_10 <- tw_2018_10 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_10 <- tw_2018_10 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_10)
res_2018_10$nperwrd <- res_2018_10$n / n

res_2018_11 <- tw_2018_11 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_11 <- tw_2018_11 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_11)
res_2018_11$nperwrd <- res_2018_11$n / n

res_2018_12 <- tw_2018_12 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2018_12 <- tw_2018_12 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2018_12)
res_2018_12$nperwrd <- res_2018_12$n / n

res_2019_01 <- tw_2019_01 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2019_01 <- tw_2019_01 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2019_01)
res_2019_01$nperwrd <- res_2019_01$n / n

res_2019_02 <- tw_2019_02 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2019_02 <- tw_2019_02 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2019_02)
res_2019_02$nperwrd <- res_2019_02$n / n

res_2019_03 <- tw_2019_03 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2019_03 <- tw_2019_03 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2019_03)
res_2019_03$nperwrd <- res_2019_03$n / n

res_2019_04 <- tw_2019_04 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2019_04 <- tw_2019_04 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2019_04)
res_2019_04$nperwrd <- res_2019_04$n / n

res_2019_05 <- tw_2019_05 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2019_05 <- tw_2019_05 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2019_05)
res_2019_05$nperwrd <- res_2019_05$n / n

res_2019_06 <- tw_2019_06 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2019_06 <- tw_2019_06 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2019_06)
res_2019_06$nperwrd <- res_2019_06$n / n

res_2019_07 <- tw_2019_07 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2019_07 <- tw_2019_07 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2019_07)
res_2019_07$nperwrd <- res_2019_07$n / n

res_2019_08 <- tw_2019_08 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2019_08 <- tw_2019_08 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2019_08)
res_2019_08$nperwrd <- res_2019_08$n / n

res_2019_09 <- tw_2019_09 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2019_09 <- tw_2019_09 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2019_09)
res_2019_09$nperwrd <- res_2019_09$n / n

res_2019_10 <- tw_2019_10 %>%
  unnest_tokens(word, text) %>%
  inner_join(economic_wrds) %>%
  count(word, sort = T)
tw_2019_10 <- tw_2019_10 %>%
  unnest_tokens(word, text)
n <- nrow(tw_2019_10)
res_2019_10$nperwrd <- res_2019_10$n / n


write.csv(res_2014_01, "datafiles/csvs/res_f_2014_01.csv")
write.csv(res_2014_02, "datafiles/csvs/res_f_2014_02.csv")
write.csv(res_2014_03, "datafiles/csvs/res_f_2014_03.csv")
write.csv(res_2014_04, "datafiles/csvs/res_f_2014_04.csv")
write.csv(res_2014_05, "datafiles/csvs/res_f_2014_05.csv")
write.csv(res_2014_06, "datafiles/csvs/res_f_2014_06.csv")
write.csv(res_2014_07, "datafiles/csvs/res_f_2014_07.csv")
write.csv(res_2014_08, "datafiles/csvs/res_f_2014_08.csv")
write.csv(res_2014_09, "datafiles/csvs/res_f_2014_09.csv")
write.csv(res_2014_10, "datafiles/csvs/res_f_2014_10.csv")
write.csv(res_2014_11, "datafiles/csvs/res_f_2014_11.csv")
write.csv(res_2014_12, "datafiles/csvs/res_f_2014_12.csv")
write.csv(res_2015_01, "datafiles/csvs/res_f_2015_01.csv")
write.csv(res_2015_02, "datafiles/csvs/res_f_2015_02.csv")
write.csv(res_2015_03, "datafiles/csvs/res_f_2015_03.csv")
write.csv(res_2015_04, "datafiles/csvs/res_f_2015_04.csv")
write.csv(res_2015_05, "datafiles/csvs/res_f_2015_05.csv")
write.csv(res_2015_06, "datafiles/csvs/res_f_2015_06.csv")
write.csv(res_2015_07, "datafiles/csvs/res_f_2015_07.csv")
write.csv(res_2015_08, "datafiles/csvs/res_f_2015_08.csv")
write.csv(res_2015_09, "datafiles/csvs/res_f_2015_09.csv")
write.csv(res_2015_10, "datafiles/csvs/res_f_2015_10.csv")
write.csv(res_2015_11, "datafiles/csvs/res_f_2015_11.csv")
write.csv(res_2015_12, "datafiles/csvs/res_f_2015_12.csv")
write.csv(res_2016_01, "datafiles/csvs/res_f_2016_01.csv")
write.csv(res_2016_02, "datafiles/csvs/res_f_2016_02.csv")
write.csv(res_2016_03, "datafiles/csvs/res_f_2016_03.csv")
write.csv(res_2016_04, "datafiles/csvs/res_f_2016_04.csv")
write.csv(res_2016_05, "datafiles/csvs/res_f_2016_05.csv")
write.csv(res_2016_06, "datafiles/csvs/res_f_2016_06.csv")
write.csv(res_2016_07, "datafiles/csvs/res_f_2016_07.csv")
write.csv(res_2016_08, "datafiles/csvs/res_f_2016_08.csv")
write.csv(res_2016_09, "datafiles/csvs/res_f_2016_09.csv")
write.csv(res_2016_10, "datafiles/csvs/res_f_2016_10.csv")
write.csv(res_2016_11, "datafiles/csvs/res_f_2016_11.csv")
write.csv(res_2016_12, "datafiles/csvs/res_f_2016_12.csv")
write.csv(res_2017_01, "datafiles/csvs/res_f_2017_01.csv")
write.csv(res_2017_02, "datafiles/csvs/res_f_2017_02.csv")
write.csv(res_2017_03, "datafiles/csvs/res_f_2017_03.csv")
write.csv(res_2017_04, "datafiles/csvs/res_f_2017_04.csv")
write.csv(res_2017_05, "datafiles/csvs/res_f_2017_05.csv")
write.csv(res_2017_06, "datafiles/csvs/res_f_2017_06.csv")
write.csv(res_2017_07, "datafiles/csvs/res_f_2017_07.csv")
write.csv(res_2017_08, "datafiles/csvs/res_f_2017_08.csv")
write.csv(res_2017_09, "datafiles/csvs/res_f_2017_09.csv")
write.csv(res_2017_10, "datafiles/csvs/res_f_2017_10.csv")
write.csv(res_2017_11, "datafiles/csvs/res_f_2017_11.csv")
write.csv(res_2017_12, "datafiles/csvs/res_f_2017_12.csv")
write.csv(res_2018_01, "datafiles/csvs/res_f_2018_01.csv")
write.csv(res_2018_02, "datafiles/csvs/res_f_2018_02.csv")
write.csv(res_2018_03, "datafiles/csvs/res_f_2018_03.csv")
write.csv(res_2018_04, "datafiles/csvs/res_f_2018_04.csv")
write.csv(res_2018_05, "datafiles/csvs/res_f_2018_05.csv")
write.csv(res_2018_06, "datafiles/csvs/res_f_2018_06.csv")
write.csv(res_2018_07, "datafiles/csvs/res_f_2018_07.csv")
write.csv(res_2018_08, "datafiles/csvs/res_f_2018_08.csv")
write.csv(res_2018_09, "datafiles/csvs/res_f_2018_09.csv")
write.csv(res_2018_10, "datafiles/csvs/res_f_2018_10.csv")
write.csv(res_2018_11, "datafiles/csvs/res_f_2018_11.csv")
write.csv(res_2018_12, "datafiles/csvs/res_f_2018_12.csv")
write.csv(res_2019_01, "datafiles/csvs/res_f_2019_01.csv")
write.csv(res_2019_02, "datafiles/csvs/res_f_2019_02.csv")
write.csv(res_2019_03, "datafiles/csvs/res_f_2019_03.csv")
write.csv(res_2019_04, "datafiles/csvs/res_f_2019_04.csv")
write.csv(res_2019_05, "datafiles/csvs/res_f_2019_05.csv")
write.csv(res_2019_06, "datafiles/csvs/res_f_2019_06.csv")
write.csv(res_2019_07, "datafiles/csvs/res_f_2019_07.csv")
write.csv(res_2019_08, "datafiles/csvs/res_f_2019_08.csv")
write.csv(res_2019_09, "datafiles/csvs/res_f_2019_09.csv")
write.csv(res_2019_10, "datafiles/csvs/res_f_2019_10.csv")
