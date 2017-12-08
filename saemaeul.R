library("rvest")
library("stringr")

seoul1 <- "도봉구"

seoul2 <- c("도봉구","마포구","관악구","강북구","용산구","서초구","노원구","성동구","강남구","성북구",
            "광진구","송파구","은평구","강서구","강동구","종로구","양천구","중랑구","영등포구",
            "서대문구","구로구","동대문구","동작구","중구","금천구")


for (k in seoul1) {
  urls <- "https://www.kfcc.co.kr/map/list.do?r1=서울&r2=k"
  saemaeul_lst <- read_html(urls)
}




saemaeul_lst <- read_html("https://www.kfcc.co.kr/map/list.do?r1=%EC%A0%9C%EC%A3%BC&r2=%EC%A0%9C%EC%A3%BC%EC%8B%9C")

saemaeul_lst


s_data <- saemaeul_lst %>% 
  html_nodes(".ac td") %>% 
  html_text() %>% 
  gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()

k <- nrow(s_data)


### if 




name <- s_data[c(2, 8, 14), ]
addr <- s_data[c(4, 10, 16), ]
phone <- s_data[c(5, 11, 17),]


n <- data.frame(name,addr,phone)
n




