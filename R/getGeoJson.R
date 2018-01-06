getGeoJson <- function(country, iso = FALSE, lvl = 0, saveRaw = FALSE, saveJson = TRUE, folder = "./")
{
  #country ISO
  if(!iso)
    ISO_country <- countryISO(country)
  iso_list <- iso3
  #detalisation lvl
  if(lvl > iso_list$maxlvl_map[iso_list$iso == ISO_country])
    lvl <- iso_list$maxlvl_map[iso_list$iso == ISO_country]
  #file to read
  file <- paste0(ISO_country ,"_adm", lvl)
  #download sp tmp file
  link <- paste0("http://biogeo.ucdavis.edu/data/gadm2.8/rds/", file, ".rds")
  download.file(link, destfile = paste0(folder, file, ".rds"), quiet = T)
  #reading spaciall polygons
  dat <- readRDS(paste0(folder, file, ".rds"))
  #delete the downloaded rds file if saveRaw is false
  if(saveRaw == F)
    suppressMessages(file.remove(paste0(folder, file, ".rds")))
  #convert sp to json
  json <- geojson_json( dat, geometry = "polygon", convert_wgs84 = T, group = paste0("ID_", lvl) )
  #save json map
  if(saveJson == T)
    write_json(json, paste0(folder, file, ".json"))
  return( list(json = json,
               bbox = data.frame(
                 cbind(lon_min = dat@bbox[1, 1], lon_max = dat@bbox[1, 2],
                       lat_min = dat@bbox[2, 1], lat_max = dat@bbox[2, 2]) ) ) )
}
