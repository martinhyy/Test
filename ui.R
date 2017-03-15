shinyUI(fluidPage(
  
  
  sidebarLayout(
    sidebarPanel(width=0),
    mainPanel(leafletOutput("track",height = 550, width = 1000))
    
  )
  
  
  
  
))