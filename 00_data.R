# 设置app标题-----

app_title <-'生产参谋数据平台V2.0';



conn <- conn_rds('nsic')


shopInfo <- function(){
  sql <- "select *from t_sycm_shopInfo"
  res <- sql_select(conn,sql)
  return(res)
}

shopInfoCN <- function(){
  data <-shopInfo()
  names(data) <-c('访客数','访客数同比','浏览量','浏览量同比','人均浏览量','人均浏览量同比','关注店铺人数','关注店铺人数同比')
  return(data)
}


sfInfo <- function(){
  sql <- "select *from t_sycm_salesForecast"
  res <- sql_select(conn,sql)
  return(res)
}

sfInfoCN <- function(){
  data <-sfInfo()
  names(data) <-c('商品ID','商品名称','系统预测未来7天销量','最近7天新增加购件数','最近7天新增收藏人数','最近180天累计加购件数','最近180天累计收藏人数')
  return(data)
}

mydata <- shopInfoCN()
mydata




#处理市场行业信息



IndInfo <- function(){
  sql <- "select *from t_sycm_marketInd"
  res <- sql_select(conn,sql)
  return(res)
}

IndInfoCN <- function(){
  data <-IndInfo()
  names(data) <-c('店铺行业排名','店铺支付金额','本店支付占比')
  return(data)
}




# 设置3条消息框------
msg <- list(
  list(from = "人力资源部1",
       message= "7月工资表已完成计算"),
  list(from="数据部2",
       message = "HR功能已更新到V2",
       icon = "question",
       time = "13:45"
       ),
  list(from = "技术支持3",
       message = "新的HR数据中台已上线.",
       icon = "life-ring",
       time = "2019-08-26"
       )
)



