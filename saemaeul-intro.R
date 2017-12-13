

#### URL encoding 변경 스크립트 ####
### 변환 -> URLencode(enc2utf8("지역명"))


#### seoul ####
# r1 인코딩
seoul_r1 <- URLencode(enc2utf8("서울"))

# r2 인코딩 리스트 만들기
seoul <- c("도봉구","마포구","관악구","강북구","용산구","서초구","노원구","성동구","강남구","성북구",
            "광진구","송파구","은평구","강서구","강동구","종로구","양천구","중랑구","영등포구",
            "서대문구","구로구","동대문구","동작구","중구","금천구")

# r2 인코딩
seoul_list<-NULL
for (i in seoul) {
  k <- URLencode(enc2utf8(i))
  seoul_list <- c(seoul_list,k)
}

#### kyunggi ####
kyunggi_r1 <- URLencode(enc2utf8("경기"))
kyunggi <- c("김포시","파주시","연천군","고양시","양주시","동두천","포천시","의정부",
             "남양주시","구리시","가평군","하남시","부천시","광명시","시흥시","안산시",
             "안양시","과천시","군포시","의왕시","성남시","광주시","양평군","화성시",
             "수원시","오산시","용인시","이천시","여주시","평택시","안성시")
kyunggi_list<-NULL
for (i in kyunggi) {
  k <- URLencode(enc2utf8(i))
  kyunggi_list <- c(kyunggi_list,k)
}

#### incheon ####
incheon_r1 <- URLencode(enc2utf8("인천"))
incheon <- c("강화군","서구","동구","중구","남구","연수구","계양구","부평구","남동구")
incheon_list<-NULL
for (i in incheon) {
  k <- URLencode(enc2utf8(i))
  incheon_list <- c(incheon_list,k)
}

#### kangwon ####
kangwon_r1 <- URLencode(enc2utf8("강원"))
kangwon <- c("철원군","화천군","양구군","춘천시","인제군","고성군","속초시",
             "양양군","홍천군","강릉시","원주시","횡성군","평창군","영월군",
             "정선군","동해시","삼척시","태백시")
kangwon_list<-NULL
for (i in kangwon) {
  k <- URLencode(enc2utf8(i))
  kangwon_list <- c(kangwon_list,k)
}

#### chungbuk ####
chungbuk_r1 <- URLencode(enc2utf8("충북"))
chungbuk <- c("청주시","진천군","음성군","충주시","제천시","청원군","괴산군",
             "단양군","보은군","옥천군","영동군","증평군")
chungbuk_list<-NULL
for (i in chungbuk) {
  k <- URLencode(enc2utf8(i))
  chungbuk_list <- c(chungbuk_list,k)
}

#### chungnam ####
chungnam_r1 <- URLencode(enc2utf8("충남"))
chungnam <- c("태안군","서산시","당진시","홍성군","예산군","아산시","천안시",
              "보령시","청양군","공주시","연기군","서천군","부여군","논산시","금산군")
chungnam_list<-NULL
for (i in chungnam) {
  k <- URLencode(enc2utf8(i))
  chungnam_list <- c(chungnam_list,k)
}

#### sejong ####
sejong_r1 <- URLencode(enc2utf8("세종"))
sejong <- c("")
sejong_list<-NULL
for (i in sejong) {
  k <- URLencode(enc2utf8(i))
  sejong_list <- c(sejong_list,k)
}

#### daejeon ####
daejeon_r1 <- URLencode(enc2utf8("대전"))
daejeon <- c("유성구","대덕구","서구","중구","동구")
daejeon_list<-NULL
for (i in daejeon) {
  k <- URLencode(enc2utf8(i))
  daejeon_list <- c(daejeon_list,k)
}

#### jeonbuk ####
jeonbuk_r1 <- URLencode(enc2utf8("전북"))
jeonbuk <- c("군산시","익산시","부안군","김제시","완주군","전주시","고창군",
              "정읍시","순창군","임실군","진안군","무주군","남원시","장수군")
jeonbuk_list<-NULL
for (i in jeonbuk) {
  k <- URLencode(enc2utf8(i))
  jeonbuk_list <- c(jeonbuk_list,k)
}

#### jeonnam ####
jeonnam_r1 <- URLencode(enc2utf8("전남"))
jeonnam <- c("영광군","장성군","담양군","함평군","신안군","무안군","나주시",
             "화순군","곡성군","구례군","목포시","영암군","진도군","해남군",
             "강진군","장흥군","보성군","순천시","완두군","고흥군","여수시","광양시")
jeonnam_list<-NULL
for (i in jeonnam) {
  k <- URLencode(enc2utf8(i))
  jeonnam_list <- c(jeonnam_list,k)
}

#### gwangju ####
gwangju_r1 <- URLencode(enc2utf8("광주"))
gwangju <- c("광산구","북구","서구","남구","동구")
gwangju_list<-NULL
for (i in gwangju) {
  k <- URLencode(enc2utf8(i))
  gwangju_list <- c(gwangju_list,k)
}

#### kyungbuk ####
kyungbuk_r1 <- URLencode(enc2utf8("경북"))
kyungbuk <- c("문경시","예천군","영주시","봉화군","울진군","상주시","의성군",
             "안동시","영양군","김천시","구미시","군위군","청송군","영덕군",
             "성주군","칠곡군","영천시","포항시","고령군","경산시","경주시",
             "청도군","울릉군")
kyungbuk_list<-NULL
for (i in kyungbuk) {
  k <- URLencode(enc2utf8(i))
  kyungbuk_list <- c(kyungbuk_list,k)
}

#### daegu ####
daegu_r1 <- URLencode(enc2utf8("대구"))
daegu <- c("서구","북구","동구","달서구","중구","남구","수성구","달성군")
daegu_list<-NULL
for (i in daegu) {
  k <- URLencode(enc2utf8(i))
  daegu_list <- c(daegu_list,k)
}

#### kyungnam ####
kyungnam_r1 <- URLencode(enc2utf8("경남"))
kyungnam <- c("함양군","거창군","산청군","합천군","하동군","진주시","의령군",
              "함안군","창녕군","남해군","사천시","고성군","마산시","창원시",
              "밀양시","통영시","거제시","진해시","김해시","양산시")
kyungnam_list<-NULL
for (i in kyungnam) {
  k <- URLencode(enc2utf8(i))
  kyungnam_list <- c(kyungnam_list,k)
}

#### ulsan ####
ulsan_r1 <- URLencode(enc2utf8("울산"))
ulsan <- c("울주군","북구","중구","남구","동구")
ulsan_list<-NULL
for (i in ulsan) {
  k <- URLencode(enc2utf8(i))
  ulsan_list <- c(ulsan_list,k)
}

#### busan ####
busan_r1 <- URLencode(enc2utf8("부산"))
busan <- c("강서구","북구","금정구","기장군","사상구","부산진구","연제구",
              "동래구","사하구","서구","중구","동구","남구","수영구",
              "해운대구","영도구")
busan_list<-NULL
for (i in busan) {
  k <- URLencode(enc2utf8(i))
  busan_list <- c(busan_list,k)
}

#### jeju ####
jeju_r1 <- URLencode(enc2utf8("제주"))
jeju <- c("제주시","서귀포시")
jeju_list<-NULL
for (i in jeju) {
  k <- URLencode(enc2utf8(i))
  jeju_list <- c(jeju_list,k)
}

