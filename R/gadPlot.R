gadPlot <- function(country, type = "country")
{
  if( length( grep("country|json", type) ) == 0 ) {
    return(NA)
  } else {
    #initial map
    m <- leaflet() %>% addProviderTiles("Esri.WorldTopoMap")
    if(type == "country")
    {
      map <- getGeoJson(country, iso = F, lvl = 0, saveRaw = F, saveJson = F)
      m <- m %>% addGeoJSON(map$json) %>% fitBounds(lng1 = map$bbox$lon_min, lng2 = map$bbox$lon_max,
                                                    lat1 = map$bbox$lat_min, lat2 = map$bbox$lat_max)
    }
    if(type == "json")
      m <- m %>% addGeoJSON(country)
    return( m )
  }
}
