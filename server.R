shinyServer(function(input, output, session) {
  
  output$track <- renderLeaflet({
    
    seismic <- leaflet() %>%
      addTiles() %>%
      fitBounds(max(geolocation$lng)+0.4, 
                max(geolocation$lat)+0.4, 
                min(geolocation$lng)-0.4, 
                min(geolocation$lat)-0.4) %>%
      addMarkers(lng = geolocation$lng, 
                 lat = geolocation$lat, 
                 #icon = ~icons(iconUrl = 'http://www.iconshock.com/img_vista/IPHONE/transportation/jpg/sailing_yacht_icon.jpg'), 
                 popupOptions(), 
                 icon = icons(
                   iconUrl = c('http://downloadicons.net/sites/default/files/ship-icon-35935.png'
                               ,'http://www.iconshock.com/img_vista/IPHONE/transportation/jpg/sailing_yacht_icon.jpg'),
                   iconWidth = 25,
                   iconHeight = 25
                   
                 ),
                 popup = geolocation$BoatName)
    
    
    
    
  })
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}) 
  
  
  
  
  
  
