

#shinyserver start point----
 shinyServer(function(input, output,session) {
   
  data <- reactive({
    res <- shopInfoCN()
    return(res)
  })
   
  run_dataTable2('pre_data',data = data())
  
  run_download_xlsx(id = 'download',data = data(),filename = '生意参谋流量数据.xlsx')
  
  
  
})
