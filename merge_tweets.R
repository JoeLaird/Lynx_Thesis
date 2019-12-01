# Tweet merging

## starts with 2016_09 and ends 2019_10

tw_2014_01 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_01.txt", stringsAsFactors = F)
tw_2014_02 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_02.txt", stringsAsFactors = F)
tw_2014_03 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_03.txt", stringsAsFactors = F)
tw_2014_04 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_04.txt", stringsAsFactors = F)
tw_2014_05 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_05.txt", stringsAsFactors = F)
tw_2014_06 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_06.txt", stringsAsFactors = F)
tw_2014_07 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_07.txt", stringsAsFactors = F)
tw_2014_08 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_08.txt", stringsAsFactors = F)
tw_2014_09 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_09.txt", stringsAsFactors = F)
tw_2014_10 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_10.txt", stringsAsFactors = F)
tw_2014_11 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_11.txt", stringsAsFactors = F)
tw_2014_12 <- read.table("C:/Users/user/twitterdata/better_query/text/2014_12.txt", stringsAsFactors = F)
tw_2015_01 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_01.txt", stringsAsFactors = F)
tw_2015_02 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_02.txt", stringsAsFactors = F)
tw_2015_03 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_03.txt", stringsAsFactors = F)
tw_2015_04 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_04.txt", stringsAsFactors = F)
tw_2015_05 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_05.txt", stringsAsFactors = F)
tw_2015_06 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_06.txt", stringsAsFactors = F)
tw_2015_07 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_07.txt", stringsAsFactors = F)
tw_2015_08 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_08.txt", stringsAsFactors = F)
tw_2015_09 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_09.txt", stringsAsFactors = F)
tw_2015_10 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_10.txt", stringsAsFactors = F)
tw_2015_11 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_11.txt", stringsAsFactors = F)
tw_2015_12 <- read.table("C:/Users/user/twitterdata/better_query/text/2015_12.txt", stringsAsFactors = F)
tw_2016_01 <- read.table("C:/Users/user/twitterdata/better_query/text/2016_01.txt", stringsAsFactors = F)
tw_2016_02 <- read.table("C:/Users/user/twitterdata/better_query/text/2016_02.txt", stringsAsFactors = F)
tw_2016_03 <- read.table("C:/Users/user/twitterdata/better_query/text/2016_03.txt", stringsAsFactors = F)
tw_2016_04 <- read.table("C:/Users/user/twitterdata/better_query/text/2016_04.txt", stringsAsFactors = F)
tw_2016_05 <- read.table("C:/Users/user/twitterdata/better_query/text/2016_05.txt", stringsAsFactors = F)
tw_2016_06 <- read.table("C:/Users/user/twitterdata/better_query/text/2016_06.txt", stringsAsFactors = F)
tw_2016_07 <- read.table("C:/Users/user/twitterdata/better_query/text/2016_07.txt", stringsAsFactors = F)
tw_2016_08 <- read.table("C:/Users/user/twitterdata/better_query/text/2016_08.txt", stringsAsFactors = F)



tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2016_09.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2016_09L.txt", stringsAsFactors = F)
tw_2016_09 <- data.frame("", stringsAsFactors = F)
names(tw_2016_09) <- c("text")
w <- 0 
while (w <= 55) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2016_09[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2016_09[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2016_10.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2016_10L.txt", stringsAsFactors = F)
tw_2016_10 <- data.frame("", stringsAsFactors = F)
names(tw_2016_10) <- c("text")
w <- 0 
while (w <= 55) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2016_10[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2016_10[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}



tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2016_11.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2016_11L.txt", stringsAsFactors = F)
tw_2016_11 <- data.frame("", stringsAsFactors = F)
names(tw_2016_11) <- c("text")
w <- 0 
while (w <= 44) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2016_11[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2016_11[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}



tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2016_12.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2016_12L.txt", stringsAsFactors = F)
tw_2016_12 <- data.frame("", stringsAsFactors = F)
names(tw_2016_12) <- c("text")
w <- 0 
while (w <= 19) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2016_12[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2016_12[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_01.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_01L.txt", stringsAsFactors = F)
tw_2017_01 <- data.frame("", stringsAsFactors = F)
names(tw_2017_01) <- c("text")
w <- 0 
while (w <= 43) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_01[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_01[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_02.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_02L.txt", stringsAsFactors = F)
tw_2017_02 <- data.frame("", stringsAsFactors = F)
names(tw_2017_02) <- c("text")
w <- 0 
while (w <= 57) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_02[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_02[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}

tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_03.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_03L.txt", stringsAsFactors = F)
tw_2017_03 <- data.frame("", stringsAsFactors = F)
names(tw_2017_03) <- c("text")
w <- 0 
while (w <= 34) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_03[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_03[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_04.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_04L.txt", stringsAsFactors = F)
tw_2017_04 <- data.frame("", stringsAsFactors = F)
names(tw_2017_04) <- c("text")
w <- 0 
while (w <= 30) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_04[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_04[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}

tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_05.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_05L.txt", stringsAsFactors = F)
tw_2017_05 <- data.frame("", stringsAsFactors = F)
names(tw_2017_05) <- c("text")
w <- 0 
while (w <= 49) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_05[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_05[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}

tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_06.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_06L.txt", stringsAsFactors = F)
tw_2017_06 <- data.frame("", stringsAsFactors = F)
names(tw_2017_06) <- c("text")
w <- 0 
while (w <= 20) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_06[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_06[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_07.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_07L.txt", stringsAsFactors = F)
tw_2017_07 <- data.frame("", stringsAsFactors = F)
names(tw_2017_07) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_07[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_07[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}

tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_08.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_08L.txt", stringsAsFactors = F)
tw_2017_08 <- data.frame("", stringsAsFactors = F)
names(tw_2017_08) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_08[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_08[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}



tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_09.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_09L.txt", stringsAsFactors = F)
tw_2017_09 <- data.frame("", stringsAsFactors = F)
names(tw_2017_09) <- c("text")
w <- 0 
while (w <= 72) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_09[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_09[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}

tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_10.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_10L.txt", stringsAsFactors = F)
tw_2017_10 <- data.frame("", stringsAsFactors = F)
names(tw_2017_10) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_10[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_10[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_11.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_11L.txt", stringsAsFactors = F)
tw_2017_11 <- data.frame("", stringsAsFactors = F)
names(tw_2017_11) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_11[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_11[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2017_12.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2017_12L.txt", stringsAsFactors = F)
tw_2017_12 <- data.frame("", stringsAsFactors = F)
names(tw_2017_12) <- c("text")
w <- 0 
while (w <= 52) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2017_12[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2017_12[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_01.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_01L.txt", stringsAsFactors = F)
tw_2018_01 <- data.frame("", stringsAsFactors = F)
names(tw_2018_01) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_01[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_01[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_02.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_02L.txt", stringsAsFactors = F)
tw_2018_02 <- data.frame("", stringsAsFactors = F)
names(tw_2018_02) <- c("text")
w <- 0 
while (w <= 55) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_02[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_02[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_02.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_02L.txt", stringsAsFactors = F)
tw_2018_02 <- data.frame("", stringsAsFactors = F)
names(tw_2018_02) <- c("text")
w <- 0 
while (w <= 55) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_02[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_02[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_03.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_03L.txt", stringsAsFactors = F)
tw_2018_03 <- data.frame("", stringsAsFactors = F)
names(tw_2018_03) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_03[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_03[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_04.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_04L.txt", stringsAsFactors = F)
tw_2018_04 <- data.frame("", stringsAsFactors = F)
names(tw_2018_04) <- c("text")
w <- 0 
while (w <= 87) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_04[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_04[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_05.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_05L.txt", stringsAsFactors = F)
tw_2018_05 <- data.frame("", stringsAsFactors = F)
names(tw_2018_05) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_05[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_05[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_06.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_06L.txt", stringsAsFactors = F)
tw_2018_06 <- data.frame("", stringsAsFactors = F)
names(tw_2018_06) <- c("text")
w <- 0 
while (w <= 44) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_06[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_06[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_07.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_07L.txt", stringsAsFactors = F)
tw_2018_07 <- data.frame("", stringsAsFactors = F)
names(tw_2018_07) <- c("text")
w <- 0 
while (w <= 47) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_07[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_07[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_08.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_08L.txt", stringsAsFactors = F)
tw_2018_08 <- data.frame("", stringsAsFactors = F)
names(tw_2018_08) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_08[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_08[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_09.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_09L.txt", stringsAsFactors = F)
tw_2018_09 <- data.frame("", stringsAsFactors = F)
names(tw_2018_09) <- c("text")
w <- 0 
while (w <= 56) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_09[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_09[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_10.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_10L.txt", stringsAsFactors = F)
tw_2018_10 <- data.frame("", stringsAsFactors = F)
names(tw_2018_10) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_10[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_10[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_11.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_11L.txt", stringsAsFactors = F)
tw_2018_11 <- data.frame("", stringsAsFactors = F)
names(tw_2018_11) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_11[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_11[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2018_12.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2018_12L.txt", stringsAsFactors = F)
tw_2018_12 <- data.frame("", stringsAsFactors = F)
names(tw_2018_12) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2018_12[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2018_12[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2019_01.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2019_01L.txt", stringsAsFactors = F)
tw_2019_01 <- data.frame("", stringsAsFactors = F)
names(tw_2019_01) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2019_01[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2019_01[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2019_02.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2019_02L.txt", stringsAsFactors = F)
tw_2019_02 <- data.frame("", stringsAsFactors = F)
names(tw_2019_02) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2019_02[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2019_02[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2019_03.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2019_03L.txt", stringsAsFactors = F)
tw_2019_03 <- data.frame("", stringsAsFactors = F)
names(tw_2019_03) <- c("text")
w <- 0 
while (w <= 99) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2019_03[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2019_03[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2019_04.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2019_04L.txt", stringsAsFactors = F)
tw_2019_04 <- data.frame("", stringsAsFactors = F)
names(tw_2019_04) <- c("text")
w <- 0 
while (w <= 89) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2019_04[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2019_04[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2019_05.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2019_05L.txt", stringsAsFactors = F)
tw_2019_05 <- data.frame("", stringsAsFactors = F)
names(tw_2019_05) <- c("text")
w <- 0 
while (w <= 73) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2019_05[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2019_05[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2019_06.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2019_06L.txt", stringsAsFactors = F)
tw_2019_06 <- data.frame("", stringsAsFactors = F)
names(tw_2019_06) <- c("text")
w <- 0 
while (w <= 50) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2019_06[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2019_06[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2019_07.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2019_07L.txt", stringsAsFactors = F)
tw_2019_07 <- data.frame("", stringsAsFactors = F)
names(tw_2019_07) <- c("text")
w <- 0 
while (w <= 63) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2019_07[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2019_07[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2019_08.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2019_08L.txt", stringsAsFactors = F)
tw_2019_08 <- data.frame("", stringsAsFactors = F)
names(tw_2019_08) <- c("text")
w <- 0 
while (w <= 49) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2019_08[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2019_08[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2019_09.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2019_09L.txt", stringsAsFactors = F)
tw_2019_09 <- data.frame("", stringsAsFactors = F)
names(tw_2019_09) <- c("text")
w <- 0 
while (w <= 64) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2019_09[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2019_09[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


tw_shrt <- read.table("C:/Users/user/twitterdata/better_query/text/2019_10.txt", stringsAsFactors = F)
tw_lng <- read.table("C:/Users/user/twitterdata/better_query/text/2019_10L.txt", stringsAsFactors = F)
tw_2019_10<- data.frame("", stringsAsFactors = F)
names(tw_2019_10) <- c("text")
w <- 0 
while (w <= 62) {
  if(tw_lng$V1[1+w] == "null"){
    tw_2019_10[1+w,1] <- tw_shrt$V1[1+w]
  } else tw_2019_10[1+w,1] = tw_lng$V1[1+w]
  w <- w +1
}


rm(tw_lng)
rm(tw_shrt)
