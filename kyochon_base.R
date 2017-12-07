library("rvest")
library("stringr")

kyochon <- read_html("http://www.kyochon.com/shop/domestic.asp?sido1=1&sido2=5&txtsearch=")

kyochon

#### extract name
name <- kyochon %>% 
  html_nodes(".shopSchList dt") %>% 
  gsub(pattern = '[<dt>]',replacement = "") %>% 
  gsub(pattern = '[</dt>]',replacement ="")
name



#### addr
addr2 <- kyochon %>% 
  html_nodes(".shopSchList dd") %>% 
  gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t\t\t]',replacement = "") %>% 
  gsub(pattern = '[<dd>]',replacement = "") %>% 
  gsub(pattern = '[</dd>]',replacement = "") %>% 
  str_split_fixed(pattern = "br", n = 3)
addr2

rbind(addr,addr2)

#### dataframe
kyochon_list <- data.frame(name, addr)
colnames(kyochon_list) <- c('name', 'address_old', 'address_new', 'phone')
kyochon_list

write.csv(kyochon_list,"list.csv")
