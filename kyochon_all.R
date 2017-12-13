library("rvest")
library("stringr") 

name1 <- NULL
addr1 <- NULL


#### 1. seoul ####
for (j1 in 1:25) {  # 서울에 속한 구 25개
  sido1 <- 1 
  sido2 <- j1
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)   # divide column
  addr1 <- rbind(addr1,addr)
}


#### 2. pusan ####
for (j2 in 1:16) {
  sido1 <- 2  
  sido2 <- j2
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 3. daegu ####
for (j3 in 1:8) {
  sido1 <- 3  
  sido2 <- j3
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 4. incheon ####
for (j4 in 1:10) {
  sido1 <- 4  
  sido2 <- j4
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 5. gwangju ####
for (j5 in 1:5) {
  sido1 <- 5  
  sido2 <- j5
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 6. daejeon ####
for (j6 in 1:5) {
  sido1 <- 6  
  sido2 <- j6
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 7. ulsan ####
for (j7 in 1:5) {
  sido1 <- 7  
  sido2 <- j7
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 8. sejong ####
for (j8 in 1:12) {
  sido1 <- 8  
  sido2 <- j8
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 9. gyunggi ####
for (j9 in 1:44) {
  sido1 <- 9  
  sido2 <- j9
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 10. gangwon ####
for (j10 in 1:18) {
  sido1 <- 10  
  sido2 <- j10
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 11. chungbuk ####
for (j11 in 1:13) {
  sido1 <- 11  
  sido2 <- j11
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 12. chungnam ####
for (j12 in 1:17) {
  sido1 <- 12  
  sido2 <- j12
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 13. jeonbuk ####
for (j13 in 1:15) {
  sido1 <- 13  
  sido2 <- j13
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 14. jeonnam ####
for (j14 in 1:22) {
  sido1 <- 14  
  sido2 <- j14
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 15. kyungbuk ####
for (j15 in 1:24) {
  sido1 <- 15  
  sido2 <- j15
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 16. kyungnam ####
for (j16 in 1:22) {
  sido1 <- 16  
  sido2 <- j16
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### 17. jeju ####
for (j17 in 1:2) {
  sido1 <- 17  
  sido2 <- j17
  urls <- sprintf("http://www.kyochon.com/shop/domestic.asp?sido1=%1.0f&sido2=%1.0f",sido1,sido2)
  
  kyochon_lst <- read_html(urls)
  name <- kyochon_lst %>% 
    html_nodes(".shopSchList dt") %>% 
    gsub(pattern = '[<dt>]',replacement = "") %>% 
    gsub(pattern = '[</dt>]',replacement ="")
  name1 <- c(name1,name)
  
  addr <- kyochon_lst %>% 
    html_nodes(".shopSchList dd") %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
    gsub(pattern = '[<dd>]',replacement = "") %>% 
    gsub(pattern = '[</dd>]',replacement = "") %>% 
    str_split_fixed(pattern = "br", n = 3)
  addr1 <- rbind(addr1,addr)
}


#### summary ####

# no result check (name 없이 address만 추가되는 문제 해결)
noresult <- grep("검색결과가 없습니다.",addr1)
noresult
addr1 <- addr1[-noresult,]

# build data frame
kyochon_list <- data.frame(name1, addr1)
colnames(kyochon_list) <- c('name', 'address_old', 'address_new', 'phone')

# save data
write.csv(kyochon_list,"kyochon.csv")




