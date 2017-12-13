library("rvest")
library("stringr")

name1 <- NULL
addr1 <- NULL
phone1 <- NULL

#### region encoding ####
source("saemaeul-intro.R",encoding = "UTF-8")


#### seoul ####
for (s in seoul_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",seoul_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### kyunggi ####
for (s in kyunggi_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",kyunggi_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### incheon ####
for (s in incheon_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",incheon_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### kangwon ####
for (s in kangwon_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",kangwon_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### chungbuk ####
for (s in chungbuk_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",chungbuk_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}


#### chungnam ####
for (s in chungnam_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",chungnam_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### sejong ####
for (s in sejong_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",sejong_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### daejeon ####
for (s in daejeon_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",daejeon_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### jeonbuk ####
for (s in jeonbuk_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",jeonbuk_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### jeonnam ####
for (s in jeonnam_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",jeonnam_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### gwangju ####
for (s in gwangju_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",gwangju_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### kyungbuk ####
for (s in kyungbuk_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",kyungbuk_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### daegu ####
for (s in daegu_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",daegu_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### kyungnam ####
for (s in kyungnam_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",kyungnam_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### busan ####
for (s in busan_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",busan_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### ulsan ####
for (s in ulsan_list) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",ulsan_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}

#### jeju ####
for (s in jeju) {
  urls <- sprintf("https://www.kfcc.co.kr/map/list.do?r1=%s&r2=%s",jeju_r1,s)
  saemaeul_data <- read_html(urls)
  
  s_data <- saemaeul_data %>% 
    html_nodes(".ac td") %>% 
    html_text() %>% 
    gsub(pattern = '[\r\n\t\t\t\t\t\t\t\t]',replacement = "") %>% as.data.frame()
  
  k <- nrow(s_data)
  n <- 0
  nlist <- NULL
  a <- 0
  alist <- NULL
  p <- 0
  plist <- NULL
  i <- 1
  
  ### extract NAME
  while (n<k-4) {
    n <- (6*i)-4
    nlist <- c(nlist,n)
    i <- i+1
  }
  
  ### extract ADDR
  i <- 1
  while (a<k-2) {
    a <- (6*i)-2
    alist <- c(alist,a)
    i <- i+1
  }
  
  ### extract PHONE
  i <- 1
  while (p<k-1) {
    p <- (6*i)-1
    plist <- c(plist,p)
    i <- i+1
  }
  
  # extract list
  name <- s_data[c(nlist), ]
  addr <- s_data[c(alist), ]
  phone <- s_data[c(plist), ]
  
  name <- as.vector(name)
  addr <- as.vector(addr)
  phone <- as.vector(phone)
  
  # ADD LIST
  name1 <- c(name1,name)
  addr1 <- c(addr1,addr)
  phone1 <- c(phone1,phone)
  
}


### final list

saemaeul_list <- data.frame(name1, addr1, phone1)
write.csv(saemaeul_list,"saemaeul.csv")






