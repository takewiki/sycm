

#shinyserver start point----
 shinyServer(function(input, output,session) {
   
  data <- reactive({
    res <- shopInfoCN()
    return(res)
  })
  
  data2 <- reactive({
    res <-   sfInfoCN()
    return(res)
  })
  
  data3 <- reactive({
    res <-   IndInfoCN()
    return(res)
  })
  
  data4 <- reactive({
    res <-   shopRankInfoCN()
    return(res)
  })
  
  

    run_dataTable2('pre_data',data = data())
  
  run_download_xlsx(id = 'download',data = data(),filename = '生意参谋流量数据.xlsx')
  
  run_dataTable2('pre_data_sf',data = data2())
  
  run_download_xlsx(id = 'download_sf',data = data2(),filename = '销售预测数据.xlsx')
  
  run_dataTable2('pre_data_Ind',data = data3())
  
  run_download_xlsx(id = 'download_Ind',data = data3(),filename = '市场监控行业趋势.xlsx')
  
  run_dataTable2('pre_data_shopRank',data = data4())
  
  run_download_xlsx(id = 'download_shopRank',data = data4(),filename = 'TOP监控店铺.xlsx')
  
  
  
})
